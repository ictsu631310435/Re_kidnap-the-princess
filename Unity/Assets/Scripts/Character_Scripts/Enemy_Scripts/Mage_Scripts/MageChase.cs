using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageChase : StateMachineBehaviour
{
    private MageEnemy _mage;

    #region Unity Callbacks
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _mage = animator.GetComponent<MageEnemy>();

        if (!_mage.reposition)
        {
            _mage.aiPath.slowdownDistance = _mage.slowdownDistance + _mage.attackRange;
            _mage.aiPath.endReachedDistance = _mage.attackRange;
        }
        else
        {
            _mage.aiPath.slowdownDistance = _mage.slowdownDistance;
            _mage.aiPath.endReachedDistance = _mage.slowdownDistance / 2;

            _mage.reposition = false;
        }

        _mage.animator.SetBool("isWalking", true);
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_mage.aiDestination.target == _mage.player && _mage.playerDistance > _mage.detectRange)
        {
            _mage.aiDestination.target = null;

            Debug.Log(_mage.name + " | Chase: Player out of range");
        }

        if (_mage.aiPath.reachedDestination)
        {
            animator.SetBool("inCombat", true);

            Debug.Log(_mage.name + " | Chase: to Combat");
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _mage.aiDestination.target = null;

        animator.SetBool("isChasing", false);

        _mage.animator.SetBool("isWalking", false);
    }
    #endregion
}
