using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling Enemy's Dead State
/// </summary>
public class EnemyDead : StateMachineBehaviour
{
    public float destroyDelaySeconds;

    private Enemy _enemy;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Destroy(animator.gameObject, destroyDelaySeconds);

        _enemy = animator.GetComponent<Enemy>();

        if (_enemy.aiDestination)
        {
            _enemy.aiDestination.target = null;
        }

        if (_enemy.aiPath)
        {
            _enemy.aiPath.canMove = false;
            _enemy.aiPath.maxSpeed = 0;
        }

        if (_enemy.animator)
        {
            _enemy.animator.SetBool("isDead", true);
        }
    }
}
