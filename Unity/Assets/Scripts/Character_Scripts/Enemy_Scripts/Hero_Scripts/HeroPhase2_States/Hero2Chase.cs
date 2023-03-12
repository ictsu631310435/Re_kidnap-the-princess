using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2Chase : StateMachineBehaviour
{
    private HeroEnemyPhase2 _hero;

    public float maxDuration;
    [SerializeField] private float _remainingDuration;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        _hero.currentState = HeroEnemyPhase2.Action.ChasePlayer;

        switch (_hero.nextState)
        {
            case HeroEnemyPhase2.Action.ChasePlayer:
                _hero.aiPath.slowdownDistance = _hero.slowdownDistance + _hero.detectRange;
                _hero.aiPath.endReachedDistance = _hero.detectRange;

                _hero.nextState = HeroEnemyPhase2.Action.CombatStance;
                break;

            case HeroEnemyPhase2.Action.MeleeAttack:
                _hero.aiPath.slowdownDistance = _hero.slowdownDistance + _hero.attackRange;
                _hero.aiPath.endReachedDistance = _hero.attackRange;
                break;
        }

        _hero.aiPath.canMove = true;

        _remainingDuration = maxDuration;

        if (_hero.animator)
        {
            _hero.animator.SetBool("isRunning", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_remainingDuration > 0.0f)
        {
            _remainingDuration -= Time.deltaTime;
        }
        else if (!_hero.aiPath.reachedDestination)
        {
            _hero.nextState = HeroEnemyPhase2.Action.RangedAttack;
            animator.SetBool("LightSwordChanneling", true);
        }

        if (_hero.aiPath.reachedDestination)
        {
            switch (_hero.nextState)
            {
                case HeroEnemyPhase2.Action.CombatStance:
                    animator.SetBool("isChasing", false);
                    break;

                case HeroEnemyPhase2.Action.MeleeAttack:
                    _hero.currentState = HeroEnemyPhase2.Action.MeleeAttack;
                    _hero.nextState = HeroEnemyPhase2.Action.CombatStance;
                    animator.SetTrigger("Attack");
                    break;
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _remainingDuration = 0.0f;

        animator.SetBool("isChasing", false);

        _hero.aiDestination.target = null;

        if (_hero.animator)
        {
            _hero.animator.SetBool("isRunning", false);
        }
    }
}
