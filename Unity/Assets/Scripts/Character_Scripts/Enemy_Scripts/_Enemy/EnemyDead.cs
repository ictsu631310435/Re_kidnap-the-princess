using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling Enemy's Dead State
/// </summary>
public class EnemyDead : StateMachineBehaviour
{
    private Enemy _enemy;

    public float destroyDelaySeconds;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Get Components
        _enemy = animator.GetComponent<Enemy>();

        _enemy.aiDestination.target = null;
        _enemy.aiPath.canMove = false;
        _enemy.aiPath.maxSpeed = 0;

        Destroy(animator.gameObject, destroyDelaySeconds);
    }
}
