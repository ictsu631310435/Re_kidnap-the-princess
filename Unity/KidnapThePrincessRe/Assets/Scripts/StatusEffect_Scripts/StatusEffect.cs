using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class StatusEffect : ScriptableObject
{
    public string type;
    public float duration;
    public float tickRate;

    // Base method for activating effect
    // With source
    public virtual void ActivateEffect(GameObject target, GameObject source) { }
    // Without source
    public virtual void ActivateEffect(GameObject target) { }

    // Base method for deactivating effect
    public abstract void DeactivateEffect(GameObject target);
}
