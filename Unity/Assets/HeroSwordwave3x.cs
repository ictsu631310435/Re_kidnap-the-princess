using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeroSwordwave3x : StateMachineBehaviour
{
    private HeroEnemy _hero;

    public float emitDelaySeconds;

    public bool lookAtPlayer;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemy>();

        _hero.currentTask = _hero.nextTask;
        _hero.nextTask = HeroEnemy.Action.None;

        _hero.StartCoroutine(DelayEmit(emitDelaySeconds));

        if (_hero.animator)
        {
            _hero.animator.SetTrigger("Swordwave3x");
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.aiPath.canMove = false;
        if (!lookAtPlayer)
        {
            return;
        }
        else
        {
            _hero.LookAt(_hero.player);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.RecoverFromDisableEffect();
    }

    private IEnumerator DelayEmit(float waitSeconds)
    {
        // Wait for (waitSeconds)
        yield return new WaitForSeconds(waitSeconds);

        // Call Attack method
        _hero.Swordwave3x();
    }
}
