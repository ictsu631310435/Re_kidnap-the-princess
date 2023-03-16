using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleporter : MonoBehaviour
{
    public Transform destination;

    public StatusEffect stunEffect;

    public void Teleport(GameObject target)
    {
        if (stunEffect && target.TryGetComponent(out StatusEffectManager effectManager))
        {
            effectManager.ApplyEffect(stunEffect, gameObject);
        }

        target.transform.position = destination.position;
        target.transform.rotation = destination.localRotation;
    }
}
