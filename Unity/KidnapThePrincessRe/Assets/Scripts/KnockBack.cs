using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Script for KnockBack StatusEffect
[CreateAssetMenu(fileName = "New_KnockBack", menuName = "ScriptableObjects/StatusEffect/Knock back")]
public class KnockBack : StatusEffect
{
    public float force;

    #region Methods
    public KnockBack()
    {
        type = "Knock back";
    }

    #region Inherited
    // Method for activating effect
    // With source
    public override void ActivateEffect(GameObject target, GameObject source)
    {
        Vector3 _direction = (target.transform.position - source.transform.position).normalized;
        KnockbackEffect(target, _direction);
    }
    // Without source
    public override void ActivateEffect(GameObject target)
    {
        KnockbackEffect(target, Vector3.back);
    }

    // Method for deactivating effect
    public override void DeactivateEffect(GameObject target)
    {
        Rigidbody _rigidbody = target.GetComponent<Rigidbody>();
        _rigidbody.velocity = Vector3.zero;
    }
    #endregion

    // Method for KnockBack effect
    public void KnockbackEffect(GameObject target, Vector3 direction)
    {
        Rigidbody _rigidbody = target.GetComponent<Rigidbody>();
        _rigidbody.velocity = Vector3.zero;
        _rigidbody.freezeRotation = true;
        _rigidbody.AddForce(direction * force, ForceMode.Impulse);
    }
    #endregion
}
