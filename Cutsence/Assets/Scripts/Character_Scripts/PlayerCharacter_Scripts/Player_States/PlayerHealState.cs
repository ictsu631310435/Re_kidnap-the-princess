using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem.XR;

public class PlayerHealState : StateMachineBehaviour
{
    private PlayerInputsReceiver _input;
    private HealthController _health;
    public float healDelaySeconds;
    private PlayerController _player;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _input = animator.GetComponent<PlayerInputsReceiver>();

        _player = animator.GetComponent<PlayerController>();
        _player.ChangeMana(-5);

        _health = animator.GetComponent<HealthController>();
        _health.StartCoroutine(Heal(_health.maxHealth / 2, healDelaySeconds));

        _player.animator.SetTrigger("Heal");
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _player.StopMove();
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _input.heal = false;
        animator.SetBool("Heal", false);
    }

    private IEnumerator Heal(int healAmount, float healDelaySeconds)
    {
        yield return new WaitForSeconds(healDelaySeconds);
        _health.ChangeHealth(healAmount);
    }
}
