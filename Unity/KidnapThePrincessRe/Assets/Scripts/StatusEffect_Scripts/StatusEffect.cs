using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for creating StatusEffect
/// </summary>
public abstract class StatusEffect : ScriptableObject
{
    [Header("Status Effect")]
    public string type;
    public bool requireSource;
    public float duration;
    [Tooltip("Tick rate for over time effect")]
    public float tickRate;

    [Tooltip("Priority for displaying indicator, higher numbers have greater priority")]
    public int priority;
    public GameObject indicator;

    // Base method for activating effect
    // Without source
    public virtual void ActivateEffect(GameObject target) { }
    // With source
    public virtual void ActivateEffect(GameObject target, GameObject source) { }
    

    // Base method for deactivating effect
    public abstract void DeactivateEffect(GameObject target);
}
