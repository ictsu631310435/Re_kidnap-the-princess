using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling Enemy's Dead State
/// </summary>
public class EnemyDead : StateMachineBehaviour
{
    public float destroyDelaySeconds;

    [HideInInspector] public Enemy enemy;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy = animator.GetComponent<Enemy>();

        enemy.aiPath.canMove = false;
        enemy.aiPath.maxSpeed = 0;
        enemy.aiDestination.target = null;

        enemy.rbody.useGravity = false;
        enemy.GetComponent<Collider>().enabled = false;

        if (enemy.animator)
        {
            enemy.animator.SetBool("isDead", true);
        }

        Destroy(animator.gameObject, destroyDelaySeconds);
    }
}
