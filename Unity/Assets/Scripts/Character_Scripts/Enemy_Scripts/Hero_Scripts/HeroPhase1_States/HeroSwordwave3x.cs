using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeroSwordwave3x : StateMachineBehaviour
{
    private HeroEnemy _hero;

    public float emitDelaySeconds;

    public bool lookAtPlayer;

    public string audioClipName;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemy>();

        _hero.StartCoroutine(DelayEmit());

        _hero.currentTask = HeroEnemy.Action.Swordwave3x;
        _hero.nextTask = HeroEnemy.Action.None;

        if (_hero.animator)
        {
            _hero.animator.SetTrigger("Swordwave3x");
        }

        if (_hero.audioController)
        {
            _hero.audioController.PlayClipAtPoint(audioClipName);
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

    private IEnumerator DelayEmit()
    {
        yield return new WaitForSeconds(emitDelaySeconds);

        _hero.Swordwave3x();
    }
}
