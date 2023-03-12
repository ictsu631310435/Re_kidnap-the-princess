using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2Combat : StateMachineBehaviour
{
    public float maxDuration;
    [SerializeField] private float _remainingDuration;

    private HeroEnemyPhase2 _hero;
    private Animator _stateMachine;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _stateMachine = animator;
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        switch (_hero.currentState)
        {
            case HeroEnemyPhase2.Action.BankaiRelease:
                _remainingDuration = 0.0f;
                break;

            default:
                _remainingDuration = _hero.playerDistance <= _hero.attackRange ? _hero.timeBtwAttacks : maxDuration;
                break;
        }

        _hero.currentState = HeroEnemyPhase2.Action.CombatStance;

        _hero.aiPath.canMove = false;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_remainingDuration > 0.0f)
        {
            _remainingDuration -= Time.deltaTime;

            if (_hero.retaliateCounter >= _hero.retaliateThreshold)
            {
                _hero.nextState = HeroEnemyPhase2.Action.BankaiCharge;
                animator.SetTrigger("ReleaseBankai");
            }

            if (_hero.playerDistance <= _hero.detectRange)
            {
                _hero.LookAt(_hero.player);
            }
            else
            {
                _hero.nextState = HeroEnemyPhase2.Action.ChasePlayer;
                ToChase();
            }
        }
        else
        {
            if (_hero.playerDistance >= _hero.attackRange)
            {
                _hero.nextState = HeroEnemyPhase2.Action.MeleeAttack;
                ToChase();
            }
            else
            {
                ToMeleeAttack();
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _remainingDuration = 0.0f;
    }

    private void ToChase()
    {
        _hero.aiDestination.target = _hero.player;
        _stateMachine.SetBool("isChasing", true);
    }

    private void ToMeleeAttack()
    {
        _hero.nextState = HeroEnemyPhase2.Action.MeleeAttack;
        _stateMachine.SetTrigger("Attack");
    }

    // OnStateMove is called right after Animator.OnAnimatorMove()
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that processes and affects root motion
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK()
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that sets up animation IK (inverse kinematics)
    //}
}
