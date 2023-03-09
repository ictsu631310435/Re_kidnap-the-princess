using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling Enemy's Attack State
/// </summary>
public class EnemyAttack : StateMachineBehaviour
{
    #region Data Members
    [HideInInspector] public Enemy enemy;

    [Tooltip("Delay time before calling Attack method")]
    public float damageDelaySeconds;

    public StatusEffect inflictEffect;

    public bool lookAtPlayer;
    #endregion

    #region Unity Callbacks

    #endregion
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy = animator.GetComponent<Enemy>();

        enemy.aiPath.canMove = false;

        // Attack after a delay
        // Without applying StatusEffect
        if (!inflictEffect)
        {
            enemy.StartCoroutine(Attack(damageDelaySeconds));
        }
        // With applying StatusEffect
        else
        {
            enemy.StartCoroutine(Attack(damageDelaySeconds, inflictEffect));
        }

        if (enemy.animator)
        {
            enemy.animator.SetTrigger("Attack");
        }
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy.aiPath.canMove = false;
        if (!lookAtPlayer)
        {
            return;
        }
        else
        {
            enemy.LookAt(enemy.player);
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        enemy.RecoverFromDisableEffect();
    }
    #region Methods

    // Method for attacking after a delay
    public IEnumerator Attack(float waitSeconds)
    {
        // Wait for (waitSeconds)
        yield return new WaitForSeconds(waitSeconds);

        // Call Attack method
        enemy.Attack();
    }

    // Method for attacking after a delay (Apply StatusEffect)
    public IEnumerator Attack(float waitSeconds, StatusEffect statusEffect)
    {
        // Wait for (waitSeconds)
        yield return new WaitForSeconds(waitSeconds);

        // Call Attack method
        enemy.Attack(statusEffect);
    }
    #endregion
}
