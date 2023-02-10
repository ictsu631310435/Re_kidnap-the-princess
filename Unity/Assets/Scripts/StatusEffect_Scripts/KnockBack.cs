using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Script for KnockBack StatusEffect
[CreateAssetMenu(fileName = "New_KnockBack", menuName = "ScriptableObject/Status Effect/Knock back")]
public class KnockBack : Stun
{
    [Header("Knock Back")]
    public float force;

    #region Methods
    public KnockBack()
    {
        type = "Knock back";
        requireSource = true;
    }

    #region Inherited
    // Method for activating effect
    // With source
    public override void ActivateEffect(GameObject target, GameObject source)
    {
        Vector3 direction = (target.transform.position - source.transform.position).normalized;
        KnockbackEffect(target, direction);

        TriggerResponse(target);
    }
    // Without source
    public override void ActivateEffect(GameObject target)
    {
        KnockbackEffect(target, Vector3.back);

        TriggerResponse(target);
    }

    public override void TriggerResponse(GameObject target)
    {
        if (target.TryGetComponent(out Character character))
        {
            character.Hurt();
        }
    }
    #endregion

    // Method for KnockBack effect
    public void KnockbackEffect(GameObject target, Vector3 direction)
    {
        base.StunEffect(target);

        Rigidbody rigidbody = target.GetComponent<Rigidbody>();
        rigidbody.AddForce(direction * force, ForceMode.Impulse);
    }
    #endregion
}
