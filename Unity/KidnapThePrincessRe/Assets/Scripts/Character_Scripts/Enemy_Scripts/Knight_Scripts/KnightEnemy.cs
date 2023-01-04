using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling a Knight Enemy
/// </summary>
public class KnightEnemy : Enemy
{
    #region Data Members
    [Header("Knight Enemy")]
    public float standbyRange;

    public LayerMask allyLayer;
    public int maxInCombat;

    public GameObject waypointPrefab;

    public float minTimeBtwRepos;
    public float maxTimeBtwRepos;

    // HideInInspector
    [Space(10)]
    /*[HideInInspector]*/ public bool inCombat;
    /*[HideInInspector]*/ public int inCombatNum;

    /*[HideInInspector]*/ public Transform waypoint;
    /*[HideInInspector]*/ public float nextReposTime;
    #endregion

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        aiPath.slowdownDistance = standbyRange * 3;
        aiPath.endReachedDistance = standbyRange;

        // Create a waypoint
        waypoint = Instantiate(waypointPrefab).transform;
        waypoint.parent = transform.parent;
        waypoint.position = transform.position;
        // Rename to have owner's name attached
        waypoint.name = gameObject.name + "'s Waypoint";

        InvokeRepeating(nameof(DetectCombat), 0f, 0.25f);
    }

    #region Methods
    // Method for detecting other knights in combat
    #region Inherited
    // Method for attacking (Melee)
    public override void Attack(StatusEffect inflictEffect)
    {
        // Array of all Colliders in targetLayer caught in Range.
        Collider[] colliders = Physics.OverlapSphere(attackOrigin.position, attackRadius, damageLayer);
        foreach (var collider in colliders)
        {
            // Check for HealthSystem
            if (collider.gameObject.TryGetComponent(out HealthController _health))
            {
                // Deal damage
                _health.ChangeHealth(-attackDamage);
            }
            // Check for StatusEffectHandler
            if (collider.gameObject.TryGetComponent(out StatusEffectManager _effectHandler))
            {
                // Apply inflictEffect
                _effectHandler.ApplyEffect(inflictEffect, gameObject);
            }
        }
    }

    public override void Die()
    {
        base.Die();

        Destroy(waypoint.gameObject, 2f);
    }
    #endregion

    public void DetectCombat()
    {
        // Reset number
        inCombatNum = 0;
        
        // Detect allied in range
        Collider[] colliders = Physics.OverlapSphere(transform.position, detectRange, allyLayer);
        foreach (Collider collider in colliders)
        {
            // Get MeleeEnemy in combat
            if (collider.TryGetComponent(out KnightEnemy knight) && knight.inCombat)
            {
                inCombatNum++; // Add number
            }
        }
    }

    // Unused
    public override void Attack()
    {
        throw new System.NotImplementedException();
    }
    #endregion
}
