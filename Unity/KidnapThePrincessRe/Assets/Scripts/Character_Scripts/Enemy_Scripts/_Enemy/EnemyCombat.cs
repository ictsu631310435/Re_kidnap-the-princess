using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyCombat : StateMachineBehaviour
{
    private Enemy _enemy;

    #region Unity Callbacks
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Get Components
        _enemy = animator.GetComponent<Enemy>();

        // Set time for next attack
        _enemy.nextAttackTime = Time.time + _enemy.timeBtwAttacks;

        if (_enemy.animator)
        {
            _enemy.animator.SetBool("inCombat", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // If player out of attackRange, chase after Player
        if (_enemy.playerDistance > _enemy.attackRange)
        {
            //Debug.Log("Player out of combatRange");
            // Set target to Player
            _enemy.aiDestination.target = _enemy.player;
            // Set bool for state transition to "Chase"
            animator.SetBool("isChasing", true);
        }
        // If player in attackRange, try to attack
        else
        {
            // If reached time to attack, attack
            if (Time.time > _enemy.nextAttackTime)
            {
                _enemy.nextAttackTime = Time.time + _enemy.timeBtwAttacks;
                // Set bool for state transition to "Attack"
                animator.SetTrigger("Attack");
            }
            // If not, turn to face Player
            else
            {
                // Turn to Player
                _enemy.Turn();
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Make sure inCombat = false when exit state
        animator.SetBool("inCombat", false);

        if (_enemy.animator)
        {
            _enemy.animator.SetBool("inCombat", false);
        }
    }
    #endregion
}
