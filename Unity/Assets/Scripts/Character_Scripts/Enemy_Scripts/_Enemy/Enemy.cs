using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for script controlling an enemy 
/// </summary>
public abstract class Enemy : Character
{
    #region Data Members
    [Header("Enemy")]
    [Tooltip("Detection range")]
    public float detectRange;
    public bool chasePlayerOnSpawned;

    public float slowdownDistance;

    public Transform StatusIndicator;
    public GameObject alertParticle;

    public float attackRange;

    [Tooltip("Time between attacks")]
    public float timeBtwAttacks;

    // HideInInspector
    [Space(10)]
    /*[HideInInspector]*/ public float nextAttackTime;

    /*[HideInInspector]*/ public Transform player;
    /*[HideInInspector]*/ public float playerDistance;

    /*[HideInInspector]*/ public bool alert;

    [HideInInspector] public AIPath aiPath;
    [HideInInspector] public AIDestinationSetter aiDestination;
    #endregion

    #region Unity Callbacks
    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        player = GameObject.FindGameObjectWithTag("Player").transform;
        // Get Player distance
        if (player)
        {
            playerDistance = Vector2.Distance(transform.position, player.position);
        }

        
        aiPath = GetComponent<AIPath>();
        if (aiPath)
        {
            aiPath.maxSpeed = moveSpeed;
            aiPath.slowdownDistance = slowdownDistance + attackRange;
            aiPath.endReachedDistance = attackRange;
        }

        aiDestination = GetComponent<AIDestinationSetter>();
        // Set target to Player if set to chase Player after spawned
        if (aiDestination & chasePlayerOnSpawned)
        {
            aiDestination.target = player;
        }

        gameObject.name += gameObject.GetInstanceID();
    }

    // Update is called once per frame
    void Update()
    {
        if (player)
        {
            playerDistance = Vector3.Distance(transform.position, player.position);

            if (playerDistance <= detectRange && !alert)
            {
                alert = true;
                Instantiate(alertParticle, StatusIndicator);
            }
            else if (playerDistance > detectRange && alert)
            {
                alert = false;
            }
        }
    }

#if UNITY_EDITOR
    public override void OnDrawGizmos()
    {
        base.OnDrawGizmos();

        // Draw detectRange
        if (detectRange > 0.0f)
        {
            Gizmos.color = Color.white;
            Gizmos.DrawWireSphere(transform.position, detectRange);
        }

        // Draw attackRange
        if (attackRange > 0.0f)
        {
            Gizmos.color = Color.yellow;
            Gizmos.DrawWireSphere(transform.position, attackRange);
        }
    }
#endif
    #endregion

    #region Methods
    // Method for rotating enemy to look at target
    public void LookAt(Transform target)
    {
        Vector3 heading = target.position - transform.position;
        Vector3 direction = heading.normalized;

        // Caculate rotation this enemy is going to
        Quaternion toRotation = Quaternion.LookRotation(direction, Vector3.up);
        // Rotate this enemy toward toRotation
        float rotationSpeed = aiPath ? aiPath.rotationSpeed : 360f;
        transform.rotation = Quaternion.RotateTowards(transform.rotation, toRotation, rotationSpeed * Time.deltaTime);
    }

    // Method for getting random position around player
    public Vector3 GetRandomPositionAroundPlayer(float minRange, float maxRange)
    {
        // Get a random point inside circle with radius(maxRange)
        Vector2 randomPoint = Random.insideUnitCircle * maxRange;
        Vector3 toVector3 = new Vector3(randomPoint.x, 0.0f, randomPoint.y);
        Vector3 result = player.position + toVector3;

        if (Vector3.Distance(result, player.position) >= minRange &&
            Vector3.Distance(result, transform.position) <= maxRange)
        {
            return result;
        }
        else
        {
            return GetRandomPositionAroundPlayer(minRange, maxRange);
        }
    }

    // Base method for attacking
    // Without applying StatusEffect
    public abstract void Attack();
    //
    // With applying StatusEffect
    public abstract void Attack(StatusEffect inflictEffect);

    /// <summary>
    /// Recover from all disable effect
    /// </summary>
    public virtual void RecoverFromDisableEffect()
    {
        StatusEffectManager effectManager = GetComponent<StatusEffectManager>();
        int index = effectManager.StatusEffects.FindIndex(x => x.statusEffect.disableMovement);
        // If can't find effect that disable movement
        if (index == -1)
        {
            aiPath.canMove = true;
        }
    }

    public virtual void Die()
    {
        GetComponent<Animator>().SetBool("isDead", true);

        CancelInvoke();
        StopAllCoroutines();
    }
    #endregion
}
