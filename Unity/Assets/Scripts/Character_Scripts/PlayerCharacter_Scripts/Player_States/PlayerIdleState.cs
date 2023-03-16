using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerIdleState : StateMachineBehaviour
{
    private PlayerInputsReceiver _input;
    private PlayerController _player;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _input = animator.GetComponent<PlayerInputsReceiver>();
        _player = animator.GetComponent<PlayerController>();

        _player.rotationLock = false;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_player.canAct)
        {
            if (_input.move != Vector2.zero)
            {
                animator.SetBool("isWalking", true);
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
                if (_player.currentMana < _player.fireballCost)
                {
                    _input.magic = false;
                }
                else
                {
                    animator.SetBool("Magic", true);
                }
            }
            else if (_input.heal)
            {
                HealthController health = animator.GetComponent<HealthController>();
                if (_player.currentMana < _player.healCost || health.CurrentHealth >= health.maxHealth)
                {
                    _input.heal = false;
                }
                else
                {
                    animator.SetBool("Heal", true);
                }
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    //override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    
    //}

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
