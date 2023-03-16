using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling a projectile
/// </summary>
public class Projectile : MonoBehaviour
{
    #region Data Members
    public float moveSpeed;

    public LayerMask obstacleLayer;
    public LayerMask damageLayer;

    public int attackDamage;

    public StatusEffect inflictEffect;
    private GameObject _shooter;
    #endregion

    #region Unity Callbacks
    // Update is called once per frame
    void Update()
    {
        // Move the projectile
        transform.Translate(moveSpeed * Time.deltaTime * Vector3.forward);
    }

    // OnTriggerEnter is called when the Collider collision enter the trigger
    void OnTriggerEnter(Collider collision)
    {
        // Check if collided with an obstacle or an enemy
        // (Need to convert layer to layermask using the binary left-shift operator to left-shift 1 by the layer)
        if (1 << collision.gameObject.layer == obstacleLayer.value ||
            1 << collision.gameObject.layer == damageLayer.value)
        {
            // If collided with enemy, deal damage and inflict effect
            if (1 << collision.gameObject.layer == damageLayer.value)
            {
                HealthController health = collision.gameObject.GetComponent<HealthController>();
                // Inflict attackDamage
                health.ChangeHealth(-attackDamage);

                //StatusEffectManager effectManager = collision.gameObject.GetComponent<StatusEffectManager>();
                if (inflictEffect && collision.TryGetComponent(out StatusEffectManager effectManager))
                {
                    // Inflict StatusEffect
                    effectManager.ApplyEffect(inflictEffect, _shooter);
                }
            }
            // Destroy after collided with an obstacle or an enemy
            Destroy(gameObject);
        }
    }
    #endregion

    #region Methods
    // Method for the shooter to initialize values
    // Without offset angle
    public void Initialize(GameObject shooter)
    {
        _shooter = shooter;
    }
    // With offset angle
    public void Initialize(GameObject shooter, float offsetAngle)
    {
        _shooter = shooter;

        float yAngle = transform.rotation.eulerAngles.y;
        transform.rotation = Quaternion.Euler(0, yAngle + offsetAngle, 0);
    }
    #endregion
}
