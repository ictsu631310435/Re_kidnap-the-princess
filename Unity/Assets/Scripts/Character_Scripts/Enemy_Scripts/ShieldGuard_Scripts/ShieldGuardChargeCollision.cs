using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEditor.Experimental.GraphView.GraphView;

public class ShieldGuardChargeCollision : MonoBehaviour
{
    public LayerMask obstacleLayer;
    public LayerMask enemyLayer;
    public StatusEffect inflictEffect;

    private ShieldGuardEnemy _shieldGuard;

    // Start is called before the first frame update
    void Start()
    {
        _shieldGuard = GetComponentInParent<ShieldGuardEnemy>();
    }

    // Update is called once per frame
    //void Update()
    //{
    //    
    //}

    // OnTriggerEnter is called when the Collider collision enter the trigger
    void OnTriggerEnter(Collider collision)
    {
        if (collision.CompareTag("Player") ||
            1 << collision.gameObject.layer == obstacleLayer.value || 1 << collision.gameObject.layer == enemyLayer.value)
        {
            if (collision.CompareTag("Player"))
            {
                StatusEffectManager effectManager = collision.GetComponent<StatusEffectManager>();
                effectManager.ApplyEffect(inflictEffect, transform.parent.gameObject);

                _shieldGuard.whatsHit = ShieldGuardEnemy.WhatsHit.Player;
            }
            else
            {
                _shieldGuard.whatsHit = ShieldGuardEnemy.WhatsHit.Obstacle;
            }

            _shieldGuard.hitSomething = true;
            gameObject.SetActive(false);
        }
    }
}
