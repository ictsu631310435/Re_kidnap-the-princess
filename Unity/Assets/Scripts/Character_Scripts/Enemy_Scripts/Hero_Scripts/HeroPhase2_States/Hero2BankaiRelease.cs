using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2BankaiRelease : StateMachineBehaviour
{
    private HeroEnemyPhase2 _hero;

    public GameObject swordwavePrefab;
    public int swordwaveNum;
    public float startAngle;
    public float angleOffset;

    public float emitDelaySeconds;

    private bool _isEmit;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        _hero.StartCoroutine(DelayEmitProjectile(emitDelaySeconds));

        _hero.currentState = HeroEnemyPhase2.Action.BankaiRelease;
        _hero.nextState = HeroEnemyPhase2.Action.CombatStance;

        _hero.retaliateCounter = 0;
        _isEmit = false;

        animator.ResetTrigger("ReleaseBankai");
        if (_hero.animator)
        {
            _hero.animator.SetTrigger("ReleaseBankai");
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.aiPath.canMove = _isEmit;
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.RecoverFromDisableEffect();
    }

    private IEnumerator DelayEmitProjectile(float waitSeconds)
    {
        yield return new WaitForSeconds(waitSeconds);

        for (int i = 0; i < swordwaveNum; i++)
        {
            GameObject swordwave = Instantiate(swordwavePrefab, _hero.attackOrigin.position, _hero.transform.rotation);
            swordwave.GetComponent<Projectile>().Initialize(_hero.gameObject, startAngle + (angleOffset * i));
        }

        _isEmit = true;
    }
}
