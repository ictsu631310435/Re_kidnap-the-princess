using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShieldGuardStun : StateMachineBehaviour
{
    public StatusEffect selfStunEffect;

    private ShieldGuardEnemy _shieldGuard;
    private StatusEffectManager _effectManager;

    private float _remainingDuration;

    private HealthController _healthController;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _shieldGuard = animator.GetComponent<ShieldGuardEnemy>();
        _effectManager = animator.GetComponent<StatusEffectManager>();

        _effectManager.ApplyEffect(selfStunEffect, animator.gameObject);

        _remainingDuration = selfStunEffect.duration;

        _healthController = animator.GetComponent<HealthController>();
        _healthController.Invulnerable = false;

        _shieldGuard.animator.SetBool("isStun", true);
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        int index = _effectManager.StatusEffects.FindIndex(x => x.statusEffect.disableMovement);

        /*if (_remainingDuration > 0.0f && index != -1)
        {
            _remainingDuration -= Time.deltaTime;
        }
        else*/
        if (index == -1)
        {
            animator.SetBool("isStun", false);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _shieldGuard.animator.SetBool("isStun", false);

        _remainingDuration = 0.0f;

        _healthController.Invulnerable = true;
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
