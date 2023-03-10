using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Pathfinding;

public class EnemyIdle : StateMachineBehaviour
{
    [HideInInspector] public Enemy enemy;

    #region Unity Callbacks
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Get Components
        enemy = animator.GetComponent<Enemy>();

        animator.SetBool("isIdling", true);
        if (enemy.animator)
        {
            enemy.animator.SetBool("isIdling", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // If Player is inside detection range, target Player
        if (enemy.playerDistance <= enemy.detectRange)
        {
            // Set target to Player
            enemy.aiDestination.target = enemy.player;
        }
        // If targeted Player, transition to "Chase" state
        if (enemy.aiDestination.target == enemy.player)
        {
            // Set bool for state Transition to "Chase"
            animator.SetBool("isChasing", true);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("isIdling", false);
        if (enemy.animator)
        {
            enemy.animator.SetBool("isIdling", false);
        }
    }
    #endregion
}
