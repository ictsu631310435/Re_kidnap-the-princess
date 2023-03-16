using Pathfinding;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeroEnemy : Enemy
{
    [Header("Hero Enemy")]
    public float rangeAttackThreshold;

    public GameObject swordwavePrefab;

    public int retaliateThreshold;
    public int retaliateCounter;

    public int retaliateBulletNum;
    public float startAngle;
    public float angleOffset;

    public GameObject[] unpackGameObjects;

    public GameObject backupSpawner;
    [Range(0.0f, 1.0f)]
    public float callBackUpThreshold;

    public GameObject nextPhaseCutscene;

    public enum Action
    {
        None, CombatStance, ChasePlayer, MeleeAttack, RangedAttack, Swordwave3x, CallBackUp
    }
    [Header("Info")]
    public Action currentTask;
    public Action nextTask;

    public bool canCallBackUp;
    public bool isBackUpCalled;

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
            if (item != nextPhaseCutscene)
            {
                Destroy(item);
            }
        }

        if (nextPhaseCutscene)
        {
            nextPhaseCutscene.gameObject.SetActive(true);
        }
    }

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

    public override void Hurt()
    {
        retaliateCounter++;
        retaliateCounter = Mathf.Clamp(retaliateCounter, 0, retaliateThreshold);

        if (!isBackUpCalled)
        {
            HealthController healthController = GetComponent<HealthController>();
            if (healthController.CurrentHealth <= (healthController.maxHealth * callBackUpThreshold))
            {
                canCallBackUp = true;
            }
        }

        if (retaliateCounter >= retaliateThreshold || canCallBackUp)
        {
            return;
        }

        base.Hurt();
    }

    public void Swordwave3x()
    {
        retaliateCounter = 0;
        for (int i = 0; i < retaliateBulletNum; i++)
        {
            GameObject swordwave = Instantiate(swordwavePrefab, attackOrigin.position, transform.rotation);
            swordwave.GetComponent<Projectile>().Initialize(gameObject, startAngle + (angleOffset * i));
        }
    }

    public void ActivateBackupSpawner()
    {
        isBackUpCalled = true;
        canCallBackUp = false;
        backupSpawner.SetActive(true);
    }
    #endregion
}
