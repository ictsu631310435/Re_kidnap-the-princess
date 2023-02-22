using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.RuleTile.TilingRuleOutput;

public class ShieldGuardCharge : StateMachineBehaviour
{
    private ShieldGuardEnemy shieldGuard;

    public float remainDuration;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        shieldGuard = animator.GetComponent<ShieldGuardEnemy>();

        Vector3 heading = shieldGuard.player.position - shieldGuard.transform.position;
        Vector3 direction = heading.normalized;
        shieldGuard.rbody.velocity = direction * shieldGuard.moveSpeed;

        shieldGuard.remainChargeDuration = shieldGuard.chargeDuration;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (shieldGuard.remainChargeDuration > 0f)
        {
            shieldGuard.remainChargeDuration -= Time.deltaTime;
        }

        if (shieldGuard.remainChargeDuration <= 0f)
        {
            //animator.SetBool("isHit", false);
            //shieldGuard.animator.SetBool("isHit", false);
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
