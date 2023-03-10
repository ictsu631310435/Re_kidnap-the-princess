using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DashCollider : MonoBehaviour
{
    #region Data Members
    public LayerMask affectLayer;
    public StatusEffect inflictEffect;
    private PlayerController _player;
    #endregion
    // Start is called before the first frame update
    void Start()
    {
        // Get _player
        _player = GetComponentInParent<PlayerController>();
    }

    // OnTriggerEnter is called when the Collider collision enter the trigger
    void OnTriggerEnter(Collider collision)
    {
        // Check if collided with an enemy and enemy has StatusEffectManager then apply StatusEffect
        // (Need to convert layer to layermask using the binary left-shift operator to left-shift 1 by the layer)
        if (1 << collision.gameObject.layer == affectLayer.value
            && collision.TryGetComponent(out StatusEffectManager effectManager))
        {
            // Apply StatusEffect
            effectManager.ApplyEffect(inflictEffect, _player.gameObject);
        }
    }
}
