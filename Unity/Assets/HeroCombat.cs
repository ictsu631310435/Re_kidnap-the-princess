using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeroCombat : StateMachineBehaviour
{
    private HeroEnemy _hero;

    public float maxDuration;
    [SerializeField] private float _remainingDuration;

    private Animator _stateMachine;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _stateMachine = animator;
        _hero = animator.GetComponent<HeroEnemy>();

        _hero.currentTask = HeroEnemy.Action.CombatStance;
        _hero.nextTask = HeroEnemy.Action.None;

        _hero.aiPath.canMove = false;
        //animator.SetBool("CombatStance", true);
        /*if (_hero.animator)
        {
            _hero.animator
        }*/
        _remainingDuration = _hero.playerDistance <= _hero.rangeAttackThreshold ? _hero.timeBtwAttacks : maxDuration;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_remainingDuration > 0.0f)
        {
            _remainingDuration -= Time.deltaTime;
        }
        else
        {
            if (_hero.playerDistance > _hero.rangeAttackThreshold)
            {
                _hero.nextTask = HeroEnemy.Action.RangedAttack;
                animator.SetTrigger("RangedAttack");
            }
            else
            {
                _hero.nextTask = HeroEnemy.Action.MeleeAttack;
                if (_hero.playerDistance <= _hero.attackRange)
                {
                    animator.SetTrigger("Attack");
                }
                else
                {
                    TransitionChase();
                }
            }
        }

        if (_hero.playerDistance <= _hero.detectRange)
        {
            _hero.LookAt(_hero.player);
        }
        else
        {
            _hero.nextTask = HeroEnemy.Action.ChasePlayer;
            TransitionChase();
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _remainingDuration = 0.0f;    
    }

    private void TransitionChase()
    {
        _hero.aiDestination.target = _hero.player;
        _stateMachine.SetBool("isChasing", true);
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
