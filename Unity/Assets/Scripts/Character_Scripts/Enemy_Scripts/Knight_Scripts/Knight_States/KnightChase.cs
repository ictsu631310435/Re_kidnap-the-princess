using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class KnightChase : StateMachineBehaviour
{
    private KnightEnemy _knight;

    #region Unity Callbacks
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Get Components
        _knight = animator.GetComponent<KnightEnemy>();

        // Change slowdownDistance and endReachedDistance base on entered combat or not
        if (!_knight.inCombat)
        {
            _knight.aiPath.maxSpeed = _knight.moveSpeed;

            // If not entered combat, slow down and stop when target in standbyRange
            _knight.aiPath.slowdownDistance = _knight.slowdownDistance + _knight.standbyRange;
            _knight.aiPath.endReachedDistance = _knight.standbyRange;

            _knight.animator.SetBool("isWalking", true);
            _knight.animator.SetBool("isRunning", false);
        }
        else
        {
            _knight.aiPath.maxSpeed = _knight.engageMoveSpeed;

            // If entered combat, slow down and stop when target in attackRange
            _knight.aiPath.slowdownDistance = _knight.slowdownDistance + _knight.attackRange;
            _knight.aiPath.endReachedDistance = _knight.attackRange;

            _knight.animator.SetBool("isWalking", false);
            _knight.animator.SetBool("isRunning", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_knight.aiDestination.target == _knight.player && _knight.playerDistance > _knight.detectRange)
        {
            //_knight.aiPath.maxSpeed = _knight.moveSpeed * 2;
            _knight.aiDestination.target = null;

            _knight.inCombat = false;

            Debug.Log(_knight.name + " | Chase: Player out of range");
        }

        if (_knight.aiPath.reachedDestination)
        {
            if (!_knight.inCombat)
            {
                if (_knight.playerDistance > _knight.detectRange)
                {
                    animator.SetBool("isIdling", true);

                    Debug.Log(_knight.name + " | Chase: to Idle");
                }
                else
                {
                    animator.SetBool("onStandby", true);

                    Debug.Log(_knight.name + " | Chase: to Standby");
                }
            }
            else
            {
                animator.SetBool("inCombat", true);

                Debug.Log(_knight.name + " | Chase: to Combat");
            }
            
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Make sure to not set target to anything when exit state
        _knight.aiDestination.target = null;

        // Make sure isChasing = false when exit state
        animator.SetBool("isChasing", false);

        _knight.animator.SetBool("isWalking", false);
        _knight.animator.SetBool("isRunning", false);
    }
    #endregion
}
