using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.RuleTile.TilingRuleOutput;

public class ShieldGuardCharge : StateMachineBehaviour
{
    private ShieldGuardEnemy _shieldGuard;

    [SerializeField] private float _remainingDuration;

    public string audioClipName;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _shieldGuard = animator.GetComponent<ShieldGuardEnemy>();

        Vector3 heading = _shieldGuard.player.position - _shieldGuard.transform.position;
        Vector3 direction = heading.normalized;

        _shieldGuard.rbody.velocity = direction * _shieldGuard.moveSpeed;

        _remainingDuration = _shieldGuard.chargeDuration;

        _shieldGuard.chargeHitBox.SetActive(true);

        animator.SetBool("isCharging", true);

        if (_shieldGuard.animator)
        {
            _shieldGuard.animator.SetBool("isCharging", true);
        }

        if (_shieldGuard.audioController)
        {
            _shieldGuard.audioController.PlayClipAtPoint(audioClipName);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (_remainingDuration > 0.0f && !_shieldGuard.hitSomething)
        {
            _remainingDuration -= Time.deltaTime;
        }
        else
        {
            animator.SetBool("isCharging", false);

            /*if (_shieldGuard.hitPlayer)
            {
                animator.SetBool("isPushBack", true);
            }
            else
            {

            }*/
            switch (_shieldGuard.whatsHit)
            {
                //case ShieldGuardEnemy.WhatsHit.Nothing:
                    //break;
                case ShieldGuardEnemy.WhatsHit.Player:
                    animator.SetBool("isPushBack", true);
                    break;

                case ShieldGuardEnemy.WhatsHit.Obstacle:
                    animator.SetBool("isStun", true);
                    break;
                //default:
                    //break;
            }
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _shieldGuard.animator.SetBool("isCharging", false);

        _shieldGuard.rbody.velocity = Vector3.zero;
        _shieldGuard.chargeHitBox.SetActive(false);
        _shieldGuard.hitSomething = false;
        _shieldGuard.whatsHit = ShieldGuardEnemy.WhatsHit.Nothing;

        _remainingDuration = 0.0f;
    }
}
