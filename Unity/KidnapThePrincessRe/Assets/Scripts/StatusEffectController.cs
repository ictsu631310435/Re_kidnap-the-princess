using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Script for controlling StatusEffect of a character
public class StatusEffectController : MonoBehaviour
{
    #region Data Members
    [Serializable]
    public class EffectStats
    {
        public string type;
        public StatusEffect statusEffect;
        public GameObject source;
        public float duration;
        public float nextTickTime;
    }
    public List<EffectStats> StatusEffects;

    private float _newDuration;
    private float _newTickTime;
    #endregion

    #region Unity Callbacks
    // Update is called once per frame
    void Update()
    {
        // If list is not empty, call HandleEffects
        if (StatusEffects != null)
        {
            HandleEffects();
        }
    }
    #endregion

    #region Methods
    // Method for applying an effect
    public void ApplyEffect(StatusEffect effect, GameObject source)
    {
        // Declare new (EffectStats)
        EffectStats effectStat = new()
        {
            type = effect.type,
            statusEffect = effect,
            source = source,
            duration = effect.duration,
            nextTickTime = effect.duration - effect.tickRate
        };

        // Check if (StatusEffect) is already existed
        int index = StatusEffects.FindIndex(x => x.type == effect.type);
        // If existed, override existing (StatusEffect)
        if (index != -1)
        {
            StatusEffects[index] = effectStat;
        }
        // If not, add a new one
        else
        {
            StatusEffects.Add(effectStat);
        }
    }

    // Method for handling currently active effects
    public void HandleEffects()
    {
        // Loop through entire list
        for (int i = 0; i < StatusEffects.Count; i++)
        {
            // Initial Activation
            if (StatusEffects[i].duration == StatusEffects[i].statusEffect.duration)
            {
                // Activate Effect
                if (StatusEffects[i].source != null)
                {
                    StatusEffects[i].statusEffect.ActivateEffect(gameObject, StatusEffects[i].source);
                }
                else
                {
                    StatusEffects[i].statusEffect.ActivateEffect(gameObject);
                }

                // Assign value to (_newTickTime)
                _newTickTime = StatusEffects[i].nextTickTime;
            }
            // Tick Activation
            else if (StatusEffects[i].statusEffect.tickRate > 0 &&
                     StatusEffects[i].duration <= StatusEffects[i].nextTickTime)
            {
                // Activate Effect
                if (StatusEffects[i].source != null)
                {
                    StatusEffects[i].statusEffect.ActivateEffect(gameObject, StatusEffects[i].source);
                }
                else
                {
                    StatusEffects[i].statusEffect.ActivateEffect(gameObject);
                }
                // Calculate (nextTickTime) and assign value to (_newTickTime)
                _newTickTime = StatusEffects[i].nextTickTime - StatusEffects[i].statusEffect.tickRate;
            }

            // Update effectDuration and nextTickTime
            _newDuration = StatusEffects[i].duration - Time.deltaTime;
            StatusEffects[i].duration = _newDuration;
            StatusEffects[i].nextTickTime = _newTickTime;

            // Remove an Effect when it expired 
            if (StatusEffects[i].duration <= 0)
            {
                RemoveEffect(i);
            }
        }
    }

    // Method for removing an effect
    public void RemoveEffect(int indexToRemove)
    {
        // Deactivate Effect
        StatusEffects[indexToRemove].statusEffect.DeactivateEffect(gameObject);
        // Remove Effect from list
        StatusEffects.RemoveAt(indexToRemove);
    }
    #endregion
}
