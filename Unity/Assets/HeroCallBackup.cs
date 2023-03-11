using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeroCallBackup : StateMachineBehaviour
{
    private HeroEnemy _hero;

    public float activateDelaySeconds;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemy>();

        _hero.currentTask = HeroEnemy.Action.CallBackUp;
        _hero.nextTask = HeroEnemy.Action.None;

        _hero.Invoke(nameof(_hero.ActivateBackupSpawner), activateDelaySeconds);

        if (_hero.animator)
        {
            _hero.animator.SetTrigger("CallBackup");
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.aiPath.canMove = false;
        _hero.LookAt(_hero.player);
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.RecoverFromDisableEffect();
    }
}
