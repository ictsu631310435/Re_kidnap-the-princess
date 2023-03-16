using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShieldGuardEnemy : Enemy
{
    [Header("Shield Guard Enemy")]
    public float chargeDuration;

    public GameObject chargeHitBox;

    public float pushBackSpeed;

    [HideInInspector] public bool hitSomething;
    [HideInInspector] public bool hitPlayer;
    [HideInInspector] public bool hitObstacle;

    public enum WhatsHit
    {
        Nothing, Player, Obstacle
    }
    public WhatsHit whatsHit;

    public override bool isDamageable()
    {
        StatusEffectManager effectManager = GetComponent<StatusEffectManager>();
        // Try to find disableMovement StatusEffect
        int index = effectManager.StatusEffects.FindIndex(x => x.statusEffect.disableMovement);
        if (index == -1)
        {
            // Do not found, UnDamageable
            return false;
        }
        else
        {
            // Found, Damageable
            return true;
        }
    }

    public override void Hurt()
    {
        return;
    }
}
