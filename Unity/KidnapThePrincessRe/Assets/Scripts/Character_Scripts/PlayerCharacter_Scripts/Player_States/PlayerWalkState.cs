using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWalkState : StateMachineBehaviour
{
    private PlayerInputsReceiver _input;
    private PlayerController _player;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _input = animator.GetComponent<PlayerInputsReceiver>();
        _player = animator.GetComponent<PlayerController>();
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_input.move == Vector2.zero || !_player.canAct)
        {
            animator.SetBool("isWalking", false);
        }

        if (_player.canAct)
        {
            _player.Move();

            if (_input.dash)
            {
                animator.SetBool("Dash", true);
            }
            else if (_input.sword)
            {
                animator.SetBool("Sword", true);
            }
            else if (_input.magic)
            {
                if (_player.currentMana < 3)
                {
                    _input.magic = false;
                }
                else
                {
                    animator.SetBool("Magic", true);
                }
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("isWalking", false);

        if (_player.animator && !_player.canAct)
        {
            _player.animator.SetBool("isWalking", false);
        }
    }
}
