using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Script for controlling a training dummy
/// </summary>
public class Dummy : Character
{
    #region Data Members
    [Header("Dummy Extention")]
    [Tooltip("Amount of time took to trigger health regeneration after last damaged (in second)")]
    public float regenAfterTime;

    private float _regenTimer;

    private bool _fullHealth = true;

    private HealthController _health;
    #endregion

    #region Unity Callbacks
    // Start is called before the first frame update
    void Start()
    {
        _health = GetComponent<HealthController>();
    }

    // Update is called once per frame
    void Update()
    {
        // Regenerate Health
        if (!_fullHealth && _regenTimer < regenAfterTime)
        {
            // Start (_regenTimer) after took damaged
            _regenTimer += Time.deltaTime;
        }
        else if (!_fullHealth && _regenTimer >= regenAfterTime)
        {
            // Regenerate to full health when (_regenTimer) reach (regenAfterTime)
            _health.ChangeHealth(_health.maxHealth);

            _fullHealth = true;
            // Reset timer after fully regenerated
            _regenTimer = 0.0f;
        }
    }
    #endregion

    // Call after took a hit
    public void GetHit()
    {
        _fullHealth = false;
        // Reset timer after took a hit
        _regenTimer = 0.0f;
    }
}
