using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageEnemy : Enemy
{
    [Header("Mage Enemy")]
    public GameObject fireballPrefab;
    
    [Range(-45f, 45f)]
    public float[] angleOffsets;

    public GameObject waypointPrefab;

    [Space(10)]
    [SerializeField] private int _iAngle;

    /*[HideInInspector]*/ public Transform waypoint;
    /*[HideInInspector]*/ public bool reposition;

    #region Unity Callbacks
    // Start is called before the first frame update
    public override void Start()
    {
        // Call base script's Start
        base.Start();

        // Initialize xOffsets array index
        _iAngle = 0;

        // Create a waypoint
        waypoint = Instantiate(waypointPrefab).transform;
        waypoint.parent = transform.parent;
        waypoint.position = new Vector3(transform.position.x, transform.position.y + 2, transform.position.z);
        // Rename to have owner's name attached
        waypoint.name = gameObject.name + "'s Waypoint";
    }
    #endregion

    #region Methods
    public override void Attack()
    {
        GameObject fireball = Instantiate(fireballPrefab, attackOrigin.position, transform.rotation);
        fireball.GetComponent<Projectile>().Initialize(gameObject, angleOffsets[_iAngle]);

        reposition = _iAngle == (angleOffsets.Length - 1);

        _iAngle = _iAngle < (angleOffsets.Length - 1) ? ++_iAngle : 0;
    }

    public override void Attack(StatusEffect inflictEffect)
    {
        throw new System.NotImplementedException();
    }
    #endregion
}
