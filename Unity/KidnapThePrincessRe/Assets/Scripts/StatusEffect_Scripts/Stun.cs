using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Pathfinding;

[CreateAssetMenu(fileName = "New_Stun", menuName = "ScriptableObject/Status Effect/Stun")]
public class Stun : StatusEffect
{
    #region Methods
    public Stun()
    {
        type = "Stun";
    }

    #region Inherited
    // Method for activating effect
    // Without source
    public override void ActivateEffect(GameObject target)
    {
        Rigidbody rigidbody = target.GetComponent<Rigidbody>();
        rigidbody.velocity = Vector3.zero;

        if (target.TryGetComponent(out Character character))
        {
            character.canAct = false;
        }

        if (target.TryGetComponent(out AIPath aIPath))
        {
            aIPath.canMove = false;
        }
    }
    // With source
    public override void ActivateEffect(GameObject target, GameObject source)
    {
        ActivateEffect(target);
    }

    // Method for deactivating effect
    public override void DeactivateEffect(GameObject target)
    {
        Rigidbody rigidbody = target.GetComponent<Rigidbody>();
        rigidbody.velocity = Vector3.zero;

        if (target.TryGetComponent(out Character character))
        {
            character.canAct = true;
        }

        if (target.TryGetComponent(out AIPath aIPath))
        {
            aIPath.canMove = true;
        }
    }
    #endregion
    #endregion
}
