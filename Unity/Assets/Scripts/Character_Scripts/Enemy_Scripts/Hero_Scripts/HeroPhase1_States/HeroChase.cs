using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Pathfinding;

public class HeroChase : StateMachineBehaviour
{
    private HeroEnemy _hero;

    public float maxDuration;
    [SerializeField] private float _remainingDuration;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemy>();

        _hero.currentTask = _hero.nextTask;
        _hero.nextTask = HeroEnemy.Action.None;
        switch (_hero.currentTask)
        {
            case HeroEnemy.Action.ChasePlayer:
                _hero.aiPath.slowdownDistance = _hero.slowdownDistance + _hero.detectRange;
                _hero.aiPath.endReachedDistance = _hero.detectRange;
                break;

            case HeroEnemy.Action.MeleeAttack:
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
            _hero.nextTask = HeroEnemy.Action.RangedAttack;
            animator.SetTrigger("RangedAttack");
        }

        if (_hero.aiPath.reachedDestination)
        {
            switch (_hero.currentTask)
            {
                case HeroEnemy.Action.ChasePlayer:
                    animator.SetBool("isChasing", false);
                    break;

                case HeroEnemy.Action.MeleeAttack:
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
