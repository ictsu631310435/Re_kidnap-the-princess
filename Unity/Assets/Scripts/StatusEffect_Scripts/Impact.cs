using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New_Impact", menuName = "ScriptableObjects/StatusEffect/Impact")]
public class Impact : KnockBack
{
    public int impactDamage;

    #region Methods
    public Impact()
    {
        type = "Impact";
        requireSource = true;
    }

    #region Inherited
    // Method for activating effect
    // With source
    public override void ActivateEffect(GameObject target, GameObject source)
    {
        base.ActivateEffect(target, source);
        ImpactEffect(target);
    }
    // Without source
    public override void ActivateEffect(GameObject target)
    {
        base.ActivateEffect(target);
        ImpactEffect(target);
    }
    #endregion

    // Method for KnockBack effect
    public void ImpactEffect(GameObject target)
    {
        HealthController targetHealth = target.GetComponent<HealthController>();

        targetHealth.ChangeHealth(-impactDamage);
    }
    #endregion
}
