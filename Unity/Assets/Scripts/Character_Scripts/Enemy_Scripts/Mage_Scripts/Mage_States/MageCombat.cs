using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageCombat : StateMachineBehaviour
{
    private MageEnemy _mage;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _mage = animator.GetComponent<MageEnemy>();

        // Set time for next attack
        _mage.nextAttackTime = Time.time + _mage.timeBtwAttacks;

        if (_mage.animator)
        {
            _mage.animator.SetBool("inCombat", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // If player out of attackRange, chase after Player
        if (_mage.playerDistance > _mage.attackRange)
        {
            //Debug.Log("Player out of combatRange");
            // Set target to Player
            _mage.aiDestination.target = _mage.player;
            // Set bool for state transition to "Chase"
            animator.SetBool("isChasing", true);
        }
        // If player in attackRange, try to attack
        else
        {
            if (_mage.reposition)
            {
                // Get reposition waypoint position
                _mage.waypoint.position = _mage.GetRandomPositionAroundPlayer(_mage.attackRange,
                    (_mage.attackRange + _mage.detectRange) / 2);
                // Set target to reposition waypoint 
                _mage.aiDestination.target = _mage.waypoint;

                animator.SetBool("isChasing", true);
            }
            // If reached time to attack, attack
            else if (Time.time > _mage.nextAttackTime)
            {
                _mage.nextAttackTime = Time.time + _mage.timeBtwAttacks;
                // Set bool for state transition to "Attack"
                animator.SetTrigger("Attack");
            }
            // If not, turn to face Player
            else
            {
                // Turn to Player
                _mage.LookAt(_mage.player);
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Make sure inCombat = false when exit state
        animator.SetBool("inCombat", false);

        if (_mage.animator)
        {
            _mage.animator.SetBool("inCombat", false);
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
