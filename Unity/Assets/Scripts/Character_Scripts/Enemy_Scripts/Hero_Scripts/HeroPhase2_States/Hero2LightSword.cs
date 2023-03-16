using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hero2LightSword : StateMachineBehaviour
{
    public float duration;

    public GameObject lightSwordEmitter;

    public float delayEmitSeconds;

    private HeroEnemyPhase2 _hero;
    private Animator _stateMachine;

    [SerializeField] private float _remainingDuration;

    private GameObject emitter;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _stateMachine = animator;
        _hero = animator.GetComponent<HeroEnemyPhase2>();

        _hero.StartCoroutine(ToCombatStance(duration));

        _hero.StartCoroutine(DelayEmit(delayEmitSeconds));

        _hero.currentState = HeroEnemyPhase2.Action.RangedAttack;
        _hero.nextState = HeroEnemyPhase2.Action.CombatStance;

        if (_hero.animator)
        {
            _hero.animator.SetBool("LightSwordChanneling", true);
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.aiPath.canMove = false;
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        _hero.RecoverFromDisableEffect();

        _hero.retaliateCounter = 0;

        if (_hero.animator)
        {
            _hero.animator.SetBool("LightSwordChanneling", false);
        }
    }

    IEnumerator ToCombatStance(float waitSeconds)
    {
        yield return new WaitForSeconds(waitSeconds);

        _stateMachine.SetBool("LightSwordChanneling", false);     
    }

    IEnumerator DelayEmit(float waitSeconds)
    {
        yield return new WaitForSeconds(waitSeconds);

        emitter = Instantiate(lightSwordEmitter, _hero.transform.position, _hero.transform.rotation);
        Destroy(emitter, duration - waitSeconds);
    }
}
