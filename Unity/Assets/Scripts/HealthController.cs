using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
/// <summary>
/// Script for controlling health of the character
/// </summary>
public class HealthController : MonoBehaviour
{
    #region Data Members
    [Tooltip("Maximum health of the character")]
    public int maxHealth;

    [Tooltip("Current health of the character")]
    [field: SerializeField]
    public int CurrentHealth { get; private set; }

    public UnityEvent<int> OnHealthInitialized;

    [field: SerializeField]
    public bool Invulnerable { get; set; }

    public UnityEvent<int> OnHealthChanged;

    [field: SerializeField]
    public bool KeepVulnerability { get; private set; }

    public UnityEvent OnHealthDepleted;
    #endregion

    #region Unity Callbacks
    // Start is called before the first frame update
    void Start()
    {
        // Set Initial Health
        CurrentHealth = maxHealth;

        // Invoke HealthSet event
        OnHealthInitialized?.Invoke(CurrentHealth);
    }
    #endregion

    #region Methods
    // Method for change CurrentHealth's value
    public void ChangeHealth(int amount)
    {
        if (Invulnerable)
        {
            return;
        }
        else
        {
            CurrentHealth += amount;
            CurrentHealth = Mathf.Clamp(CurrentHealth, 0, maxHealth); // Health cannot go below 0

            // Invoke HealthChanged event
            OnHealthChanged?.Invoke(CurrentHealth);

            if (CurrentHealth == 0)
            {
                // Invoke HealthDepleted event
                OnHealthDepleted?.Invoke();
                Invulnerable = !KeepVulnerability;
            }
        }
    }
    #endregion
}
