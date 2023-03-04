using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInputReceiver : MonoBehaviour
{
    public Vector3 rayHit2D;
    public Quaternion lookRotation;

    public float counterRange;

    public bool sword;

    [HideInInspector] public Vector3 position2D;
    public bool fireball;

    public int maxChargeLevel;
    public float chargeTimePerLevel;
    public float maxChargeDuration;

    public float chargeDuration;
    public int chargeLevel;

    // Start is called before the first frame update
    void Start()
    {
        lookRotation = transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);

            //LookAtInput(touch.position);

            if (chargeDuration < chargeTimePerLevel)
            {
                chargeDuration += Time.deltaTime;
            }
            else if (chargeLevel < maxChargeLevel - 1)
            {
                chargeLevel++;
                chargeDuration = 0;
            }

            switch (touch.phase)
            {
                case TouchPhase.Began:
                    LookAtInput(touch.position);

                    switch (touch.tapCount)
                    {
                        case 1:
                            sword = true;
                            break;

                        case 2:
                            fireball = true;
                            break;
                    }
                    break;

                case TouchPhase.Moved:
                    LookAtInput(touch.position);
                    break;

                case TouchPhase.Stationary:
                    break;

                case TouchPhase.Ended:
                    sword = false;
                    fireball = false;
                    chargeDuration = 0f;
                    break;

                case TouchPhase.Canceled:
                    break;
                default:
                    break;
            }
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(transform.position, counterRange);
    }

    public void LookAtInput(Vector2 newLookAtPosition)
    {
        Ray ray = Camera.main.ScreenPointToRay(newLookAtPosition);
        
        if (Physics.Raycast(ray, out RaycastHit hit))
        {
            rayHit2D = new Vector3(hit.point.x, 0.0f, hit.point.z);
            Vector3 lookDirection = (rayHit2D - transform.position).normalized;
            lookRotation = Quaternion.LookRotation(lookDirection, Vector3.up);
        }
    }
}
