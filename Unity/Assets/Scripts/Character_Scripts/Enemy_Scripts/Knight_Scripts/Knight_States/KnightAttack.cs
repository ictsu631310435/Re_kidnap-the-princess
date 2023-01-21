using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling Knight Enemy's Attack State
/// </summary>
public class KnightAttack : EnemyAttack
{
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Attack after a delay
        enemy.StartCoroutine(Attack(damageDelaySeconds, inflictEffect));
    }
}
