using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Script for KnockBack StatusEffect
[CreateAssetMenu(fileName = "New_KnockUp", menuName = "ScriptableObjects/StatusEffect/Knock up")]
public class KnockUp : StatusEffect
{
    public float force;

    #region Methods
    public KnockUp()
    {
        type = "Knock up";
    }

    #region Inherited
    // Method for activating effect
    // With source
    public override void ActivateEffect(GameObject target, GameObject source)
    {
        ActivateEffect(target);
    }
    // Without source
    public override void ActivateEffect(GameObject target)
    {
        KnockupEffect(target);
    }

    // Method for deactivating effect
    public override void DeactivateEffect(GameObject target)
    {
        //Rigidbody _rigidbody = target.GetComponent<Rigidbody>();
        //_rigidbody.velocity = Vector3.zero;
    }
    #endregion

    // Method for KnockBack effect
    public void KnockupEffect(GameObject target)
    {
        Rigidbody _rigidbody = target.GetComponent<Rigidbody>();
        _rigidbody.velocity = Vector3.zero;
        _rigidbody.freezeRotation = true;
        _rigidbody.AddForce(Vector3.up * force, ForceMode.Impulse);
    }
    #endregion
}
