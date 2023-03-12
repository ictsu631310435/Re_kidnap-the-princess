using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2BankaiCharge : StateMachineBehaviour
{
    private HeroEnemyPhase2 _hero;

    public float duration;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        _hero.StartCoroutine(NextStateAfterDelay(animator, duration));

        _hero.currentState = HeroEnemyPhase2.Action.BankaiCharge;
        _hero.nextState = HeroEnemyPhase2.Action.BankaiRelease;

        _hero.aiPath.canMove = false;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.LookAt(_hero.player);
    }

    IEnumerator NextStateAfterDelay(Animator animator, float waitSeconds) 
    {
        yield return new WaitForSeconds(waitSeconds);

        animator.SetTrigger("ReleaseBankai");
    }
}
