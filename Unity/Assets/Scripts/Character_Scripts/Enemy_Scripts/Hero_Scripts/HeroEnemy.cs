using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class HeroEnemy : Enemy
{
    [Header("Hero Enemy")]
    public float rangeAttackThreshold;

    public GameObject swordwavePrefab;

    public enum Action
    {
        None, CombatStance, ChasePlayer, MeleeAttack, RangedAttack
    }
    public Action currentTask;
    public Action nextTask;

    // Start is called before the first frame update
    //void Start()
    //{
    //    
    //}

    // Update is called once per frame
    //void Update()
    //{
    //    
    //}

    #region Methods
    public override void Attack()
    {
        GameObject swordwave = Instantiate(swordwavePrefab, attackOrigin.position, transform.rotation);
        swordwave.GetComponent<Projectile>().Initialize(gameObject);
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
    #endregion
}
