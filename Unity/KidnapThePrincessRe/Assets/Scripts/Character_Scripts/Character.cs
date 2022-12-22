using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Base script for controlling a character 
/// </summary>
public abstract class Character : MonoBehaviour
{
    [Header("Character")]
    [Tooltip("Move speed of the character in m/s")]
    public float moveSpeed;

    [Tooltip("Attack damage of the character")]
    public int attackDamage;

    [Tooltip("Origin of the character's attack")]
    public Transform attackOrigin;

    [Tooltip("Melee attack radius of the character")]
    public float attackRadius;

    [Tooltip("LayerMask of objects that can be attacked by the character")]
    public LayerMask damageLayer;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        
    }

#if UNITY_EDITOR
    void OnDrawGizmos()
    {
        if (attackOrigin != null && attackRadius > 0.0f)
        {
            Gizmos.color = Color.yellow;
            Gizmos.DrawWireSphere(attackOrigin.position, attackRadius);
        }
    }
#endif
}
