using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for creating Status Effect
/// </summary>
public abstract class StatusEffect : ScriptableObject
{
    [Header("Status Effect")]
    public string type;
    [HideInInspector] public bool requireSource;
    public float duration;
    [Tooltip("Tick rate for over time effect")]
    public float tickRate;

    public GameObject indicator;
    [Tooltip("Priority for displaying indicator, higher numbers have greater priority")]
    public int priority;

    [HideInInspector] public bool disableMovement;

    // Base method for activating effect
    // Without source
    public virtual void ActivateEffect(GameObject target) { }
    // With source
    public virtual void ActivateEffect(GameObject target, GameObject source) { }
    

    // Base method for deactivating effect
    public abstract void DeactivateEffect(GameObject target);

    public virtual void TriggerResponse(GameObject target) { }
}
