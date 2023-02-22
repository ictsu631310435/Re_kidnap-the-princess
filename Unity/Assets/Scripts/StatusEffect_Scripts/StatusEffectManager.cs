using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for managing StatusEffects of a character
/// </summary>
public class StatusEffectManager : MonoBehaviour
{
    #region Data Members
    // Class for holding data of an active StatusEffect
    [Serializable]
    public class EffectStats
    {
        public string type;
        public StatusEffect statusEffect;
        public GameObject source;
        public float duration;
        public float nextTickTime;
        public GameObject indicator;
    }

    public Transform indicator;

    [Tooltip("List holding active StatusEffects")]
    public List<EffectStats> StatusEffects;

    private int _topPriority;

    private float _newDuration;
    private float _newTickTime;
    #endregion

    // Update is called once per frame
    void Update()
    {
        // If there is an active StatusEffect, calls HandleEffects
        if (StatusEffects != null)
        {
            HandleEffects();
        }
    }

    #region Methods
    // Method for applying new StatusEffect
    public void ApplyEffect(StatusEffect effect, GameObject source)
    {
        // Create new EffectStats
        EffectStats effectStat = new()
        {
            type = effect.type,
            statusEffect = effect,
            source = source,
            duration = effect.duration,
            nextTickTime = effect.duration - effect.tickRate
        };

        // Check if StatusEffect is already existed
        int index = StatusEffects.FindIndex(x => x.type == effect.type);
        // If existed, override existing StatusEffect
        if (index != -1)
        {
            // Destroy previous indicator
            Destroy(StatusEffects[index].indicator);

            StatusEffects[index] = effectStat;
        }
        // If not, add a new one
        else
        {
            StatusEffects.Add(effectStat);
        }

        // Find which StatusEffect to display indicator
        _topPriority = effect.priority > _topPriority? effect.priority : _topPriority;
    }

    // Method for handling active StatusEffects
    public void HandleEffects()
    {
        // Loop through all active StatusEffects
        for (int i = 0; i < StatusEffects.Count; i++)
        {
            // Initial Activation
            if (StatusEffects[i].duration == StatusEffects[i].statusEffect.duration)
            {
                // Activate Effect
                ActivateEffectAt(i);

                // Assign value to _newTickTime
                _newTickTime = StatusEffects[i].nextTickTime;

                // Create new indicator
                if (StatusEffects[i].statusEffect.indicator)
                {
                    StatusEffects[i].indicator = Instantiate(StatusEffects[i].statusEffect.indicator, indicator);
                }
            }
            // Tick Activation
            else if (StatusEffects[i].statusEffect.tickRate > 0 &&
                     StatusEffects[i].duration <= StatusEffects[i].nextTickTime)
            {
                // Activate Effect
                ActivateEffectAt(i);

                // Calculate nextTickTime and assign value to _newTickTime
                _newTickTime = StatusEffects[i].nextTickTime - StatusEffects[i].statusEffect.tickRate;
            }

            // Update effectDuration and nextTickTime
            _newDuration = StatusEffects[i].duration - Time.deltaTime;
            StatusEffects[i].duration = _newDuration;
            StatusEffects[i].nextTickTime = _newTickTime;

            // Update indicator display
            if (StatusEffects[i].statusEffect.indicator)
            {
                bool isTop = StatusEffects[i].statusEffect.priority == _topPriority;
                StatusEffects[i].indicator.SetActive(isTop);
            }

            // Remove a StatusEffect when it expired 
            if (StatusEffects[i].duration <= 0)
            {
                RemoveEffectAt(i);
            }
        }
    }

    public void ActivateEffectAt(int index)
    {
        // Do not require source or source is no longer present
        if (!StatusEffects[index].statusEffect.requireSource || !StatusEffects[index].source)
        {
            StatusEffects[index].statusEffect.ActivateEffect(gameObject);
        }
        // Require source and source is still present
        else
        {
            StatusEffects[index].statusEffect.ActivateEffect(gameObject, StatusEffects[index].source);
        }
    }

    // Method for removing a StatusEffect
    public void RemoveEffectAt(int index)
    {
        // Deactivate Effect
        StatusEffects[index].statusEffect.DeactivateEffect(gameObject);

        // Destroy indicator, if it has not been destroyed
        if (StatusEffects[index].indicator)
        {
            Destroy(StatusEffects[index].indicator);
        }

        // Remove StatusEffect from list
        StatusEffects.RemoveAt(index);
    }
    #endregion
}
