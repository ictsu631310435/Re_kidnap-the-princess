using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Character : MonoBehaviour
{
    [Header("Character")]
    [Tooltip("Move speed of the character in m/s")]
    public float moveSpeed;

    [Tooltip("Attack point of the character")]
    public int attack;

    [Tooltip("Origin of the character's attack")]
    public Transform attackOrigin;

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
}
