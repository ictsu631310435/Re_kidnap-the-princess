using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWalkState : StateMachineBehaviour
{
    private PlayerInputsReceiver _input;
    private PlayerController _controller;
    private Rigidbody _rigidbody;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _input = animator.GetComponent<PlayerInputsReceiver>();
        _controller = animator.GetComponent<PlayerController>();
        _rigidbody = animator.GetComponent<Rigidbody>();
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _controller.Move();

        if (_rigidbody.velocity == Vector3.zero)
        {
            animator.SetBool("isWalking", false);
        }
        else if (_input.dash)
        {
            animator.SetBool("Dash", true);
        }
        else if (_input.sword)
        {
            animator.SetBool("Sword", true);
        }
        else if (_input.magic)
        {
            animator.SetBool("Magic", true);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("isWalking", false);
    }

    // OnStateMove is called right after Animator.OnAnimatorMove()
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that processes and affects root motion
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK()
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    // Implement code that sets up animation IK (inverse kinematics)
    //}
}
