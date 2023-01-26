using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KnightStandby : StateMachineBehaviour
{
    private KnightEnemy _knight;

    #region Unity Callbacks
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        // Get Components
        _knight = animator.GetComponent<KnightEnemy>();

        //_knight.aiPath.canMove = false;

        _knight.animator.SetBool("onStandby", true);
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_knight.playerDistance > _knight.standbyRange)
        {
            _knight.aiDestination.target = _knight.player;

            animator.SetBool("isChasing", true);
        }
        else
        {
            if (_knight.inCombatNum < _knight.maxInCombat)
            {
                _knight.aiDestination.target = _knight.player;

                _knight.inCombat = true;

                animator.SetBool("isChasing", true);
            }
            else if (Time.time > _knight.nextReposTime)
            {
                // Set time delay between each reposition
                _knight.nextReposTime = Time.time + Random.Range(_knight.minTimeBtwRepos, _knight.maxTimeBtwRepos);

                // Get reposition waypoint position
                _knight.waypoint.position = _knight.GetRandomPositionAroundPlayer(_knight.standbyRange, _knight.detectRange);
                // Set target to reposition waypoint 
                _knight.aiDestination.target = _knight.waypoint;

                animator.SetBool("isChasing", true);

                Debug.Log(_knight.name + " | Standby: Reposition");
            }

            _knight.LookAt(_knight.player);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _knight.aiPath.canMove = true;

        // Make sure onStandby = false when exit state
        animator.SetBool("onStandby", false);

        _knight.animator.SetBool("onStandby", false);
    }
    #endregion
}
