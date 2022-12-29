using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for script controlling a enemy 
/// </summary>
public class Enemy : Character
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
    [Space(15)]
    /*[HideInInspector]*/ public float nextAttackTime;

    /*[HideInInspector]*/ public Transform player;
    /*[HideInInspector]*/ public float playerDistance;

    /*[HideInInspector]*/ public bool alert;
    #endregion

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        player = FindObjectOfType<PlayerController>().transform;
        // Get Player distance
        if (player)
        {
            playerDistance = Vector2.Distance(transform.position, player.position);
        }

        // Set target to Player if set to chase Player after spawned
        if (chasePlayerOnSpawned)
        {
            //aiDestination.target = player;
        }
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

    void OnDrawGizmos()
    {
        // Draw detectRange
        if (detectRange > 0.0f)
        {
            Gizmos.DrawWireSphere(transform.position, detectRange);
        }

        // Draw attackRange
        if (attackRange > 0.0f)
        {
            Gizmos.color = Color.yellow;
            Gizmos.DrawWireSphere(transform.position, attackRange);
        }
    }
}
