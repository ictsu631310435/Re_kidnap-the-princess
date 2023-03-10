using Mono.Cecil.Cil;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHurt : StateMachineBehaviour
{
    [HideInInspector] public Enemy enemy;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy = animator.GetComponent<Enemy>();

        animator.ResetTrigger("Attack");
        if (enemy.animator)
        {
            enemy.animator.SetTrigger("Hurt");
            enemy.animator.ResetTrigger("Attack");
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy.aiPath.canMove = false;
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy.RecoverFromDisableEffect();

        enemy.aiDestination.target = enemy.player;
    }
}
