using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Pathfinding;

public class HeroEnemyPhase2 : Enemy
{
    [Header("Hero Enemy Phase 2")]
    public int retaliateThreshold;

    public GameObject[] unpackGameObjects;

    public enum Action
    {
        None, BankaiCharge, BankaiRelease, CombatStance, ChasePlayer, MeleeAttack, RangedAttack
    }
    [Header("Info")]
    public Action currentState;
    public Action nextState;

    public int retaliateCounter;

    void Awake()
    {
        aiPath = GetComponent<AIPath>();
    }

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        foreach (GameObject item in unpackGameObjects)
        {
            item.transform.parent = transform.parent;
        }
    }

    void OnDestroy()
    {
        foreach (GameObject item in unpackGameObjects)
        {
            Destroy(item);
        }
    }

    public override void Attack(StatusEffect inflictEffect)
    {
        // Array of all Colliders in targetLayer caught in Range.
        Collider[] hitColliders = Physics.OverlapSphere(attackOrigin.position, attackRadius, damageLayer);
        // Deal damage and apply inflictEffect to every hitColliders
        foreach (Collider hitCollider in hitColliders)
        {
            // Check for HealthSystem to deal damage
            if (hitCollider.gameObject.TryGetComponent(out HealthController _health))
            {
                _health.ChangeHealth(-attackDamage);
            }
            // Check for StatusEffectHandler to apply inflictEffect
            if (hitCollider.gameObject.TryGetComponent(out StatusEffectManager _effectHandler))
            {
                _effectHandler.ApplyEffect(inflictEffect, gameObject);
            }
        }
    }

    public override void Hurt()
    {
        retaliateCounter++;
        retaliateCounter = Mathf.Clamp(retaliateCounter, 0, retaliateThreshold);

        if (retaliateCounter >= retaliateThreshold ||
            currentState == Action.BankaiCharge || currentState == Action.BankaiRelease)
        {
            return;
        }

        base.Hurt();
    }
}
