using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for script controlling a enemy 
/// </summary>
public abstract class Enemy : Character
{
    #region Data Members
    [Header("Enemy")]
    [Tooltip("Detection range")]
    public float detectRange;
    public bool chasePlayerOnSpawned;

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
        aiPath.maxSpeed = moveSpeed;
        aiPath.slowdownDistance = attackRange * 3;
        aiPath.endReachedDistance = attackRange;

        aiDestination = GetComponent<AIDestinationSetter>();
        // Set target to Player if set to chase Player after spawned
        if (chasePlayerOnSpawned)
        {
            aiDestination.target = player;
        }

        gameObject.name += gameObject.GetInstanceID();
    }

    // Update is called once per frame
    void Update()
    {
        // Get Player distance
        if (player)
        {
            playerDistance = Vector3.Distance(transform.position, player.position);

            if (playerDistance <= detectRange)
            {
                if (!alert)
                {
                    alert = true;
                    Instantiate(alertParticle, StatusIndicator);
                }
            }
            else
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
    // Method for Turning Character
    public void Turn()
    {
        Vector3 heading = player.position - transform.position;
        Vector3 direction = heading.normalized;

        // Caculate rotation that Character is going to
        Quaternion toRotation = Quaternion.LookRotation(direction, Vector3.up);
        // Rotate Character rotation toward toRotation
        transform.rotation = Quaternion.RotateTowards(transform.rotation, toRotation, aiPath.rotationSpeed * Time.deltaTime);
    }

    // Method for getting random position around player
    public Vector3 GetRandomPositionAroundPlayer(float minRange, float maxRange)
    {
        // Get a random point inside circle with radius(maxRange)
        Vector2 randomPoint = Random.insideUnitCircle * maxRange;
        Vector3 toVector3 = new Vector3(randomPoint.x, 0.0f, randomPoint.y);
        Vector3 result = player.position + toVector3;

        // If result is not inside range, get new value until inside range
        while (Vector3.Distance(result, player.position) < minRange ||
               Vector3.Distance(result, transform.position) > maxRange)
        {
            randomPoint = (Random.insideUnitCircle * maxRange);
            toVector3 = new Vector3(randomPoint.x, 0.0f, randomPoint.y);
            result = player.position + toVector3;
        }

        return result;
    }

    // Base method for attacking
    // Without applying StatusEffect
    public abstract void Attack();
    //
    // With applying StatusEffect
    public abstract void Attack(StatusEffect inflictEffect);

    // Method for targeting Player
    public void PlayerAggro()
    {
        aiDestination.target = player;
    }

    public virtual void Die()
    {
        GetComponent<Animator>().SetBool("isDead", true);
        if (animator)
        {
            animator.SetTrigger("Die");
        }
    }
    #endregion
}
