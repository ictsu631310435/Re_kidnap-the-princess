using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : Character
{
    private PlayerInputReceiver _input;

    public GameObject[] fireball;

    public Transform StatusIndicator;
    public GameObject alertParticle;

    public GameObject currentIndicator;

    public bool canRotate;
    public bool canCounter;

    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        _input = GetComponent<PlayerInputReceiver>();

        canRotate = true;
    }

    // Update is called once per frame
    //void Update()
    //{
    //    
    //}

    public void SwordHit()
    {
        Collider[] hitColliders = Physics.OverlapSphere(attackOrigin.position, attackRadius, damageLayer);
        foreach (Collider collider in hitColliders)
        {
            if (collider.TryGetComponent(out HealthController health))
            {
                health.ChangeHealth(-attackDamage);
            }
            else
            if (collider.TryGetComponent(out Projectile projectile))
            {
                if (GameController.Instance)
                {
                    GameController.Instance.UpdateScore(projectile.scoreValue);
                }
                Destroy(projectile.gameObject);

                Instantiate(fireball[0], attackOrigin.position, transform.rotation);
            }
        }
    }

    public void ShootFireball()
    {
        Debug.Log(_input.chargeLevel);
        Instantiate(fireball[_input.chargeLevel], attackOrigin.position, transform.rotation);
        _input.chargeLevel = 0;
    }

    public void ShowCounterableIndicator()
    {
        currentIndicator = Instantiate(alertParticle, StatusIndicator);
    }
}
