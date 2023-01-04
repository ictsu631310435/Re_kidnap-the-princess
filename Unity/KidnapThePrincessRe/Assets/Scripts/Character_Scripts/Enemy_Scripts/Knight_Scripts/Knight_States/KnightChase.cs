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
            // If not entered combat, slow down and stop when target in standbyRange
            _knight.aiPath.slowdownDistance = _knight.standbyRange * 3;
            _knight.aiPath.endReachedDistance = _knight.standbyRange;
        }
        else
        {   // If entered combat, slow down and stop when target in attackRange
            _knight.aiPath.slowdownDistance = _knight.attackRange * 3;
            _knight.aiPath.endReachedDistance = _knight.attackRange;
        }

        if (_knight.animator)
        {
            _knight.animator.SetBool("isWalking", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_knight.aiDestination.target == _knight.player && _knight.playerDistance > _knight.detectRange)
        {
            _knight.aiDestination.target = null;

            _knight.inCombat = false;

            Debug.Log(_knight.name + " | Chase: Player out of range");
        }

        if (_knight.aiPath.reachedDestination)
        {
            if (!_knight.inCombat)
            {
                animator.SetBool("onStandby", true);

                Debug.Log(_knight.name + " | Chase: to Standby");
            }
            else
            {
                animator.SetBool("inCombat", true);

                Debug.Log(_knight.name + " | Chase: to Combat");
            }
            
        }
        /*
        // Player in detectRange, chase after target
        if (_knight.playerDistance <= _knight.detectRange)
        {
            // If target is not set, set target to Player
            if (_knight.aiDestination.target == null)
            {
                _knight.aiDestination.target = _knight.player;
            }

            // Reached destination prepare to enter next state
            if (_knight.aiPath.reachedDestination)
            {
                // If can enter combat, enter inCombat state
                if (_knight.inCombat)
                {
                    //Debug.Log("Stop chase: in Attack Range");
                    // Set bool for state transition to "inCombat"
                    animator.SetBool("inCombat", true);
                }
                // If  can not, enter onStandby state
                else
                {
                    //Debug.Log("Stop chase: Reached destination");
                    // Set bool for state transition to "Standby"
                    //animator.SetBool("onStandby", true);
                }
            }
        }
        // Player out of detectRange, stop chase after reached the last Player position before out of range
        else
        {
            // If target is still set to Player, set target to null
            if (_knight.aiDestination.target != null)
            {
                _knight.aiDestination.target = null;
                // Can not enter combat
                _knight.inCombat = false;
            }

            // Stop chase after reached the last Player position before out of range
            if (_knight.aiPath.reachedDestination)
            {
                //Debug.Log("Stop chase: Player lost");
                // Set bool for state transition to "Idle"
                animator.SetBool("isChasing", false);
            }
        }
        */
    }
    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Make sure isChasing = false when exit state
        animator.SetBool("isChasing", false);

        if (_knight.animator)
        {
            _knight.animator.SetBool("isWalking", false);
        }

        // Make sure to not set target to anything when exit state
        _knight.aiDestination.target = null;
    }
    #endregion
}
