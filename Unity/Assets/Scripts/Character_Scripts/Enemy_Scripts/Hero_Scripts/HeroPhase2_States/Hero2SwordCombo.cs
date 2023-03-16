using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2SwordCombo : StateMachineBehaviour
{
    #region Data Members
    [Serializable]
    public class Attack
    {
        [Tooltip("Delay time before calling Attack method")]
        public float hitDelaySeconds;

        public KnockBack knockbackEffect;

        public float audioDelaySeconds;
    }

    public Attack[] attacks;

    public string audioClipName;

    private HeroEnemyPhase2 _hero;
    #endregion

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        _hero.aiPath.canMove = false;

        foreach (Attack item in attacks)
        {
            _hero.StartCoroutine(DelayHit(item.hitDelaySeconds, item.knockbackEffect));

            if (_hero.audioController)
            {
                _hero.StartCoroutine(DelayPlayAudio(item.audioDelaySeconds));
            }
        }

        if (_hero.animator)
        {
            _hero.animator.SetTrigger("Attack");
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.RecoverFromDisableEffect();
    }

    IEnumerator DelayHit(float waitSeconds, KnockBack knockBack)
    {
        yield return new WaitForSeconds(waitSeconds);

        _hero.Attack(knockBack);
    }

    IEnumerator DelayPlayAudio(float waitSeconds)
    {
        yield return new WaitForSeconds(waitSeconds);

        _hero.audioController.PlayClipAtPoint(audioClipName);
    }
}
