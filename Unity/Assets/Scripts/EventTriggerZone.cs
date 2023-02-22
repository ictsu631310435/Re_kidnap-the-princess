using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
/// <summary>
/// Script for activating event when the target enters the trigger
/// </summary>
[RequireComponent(typeof(Collider))]
public class EventTriggerZone : MonoBehaviour
{
    public string activatorTag;

    public UnityEvent<GameObject> OnTrigger;

    public bool destroyAfterTrigger;

    // OnTriggerEnter is called when the Collider other enter the trigger
    void OnTriggerEnter(Collider other)
    {
        // Check for the target then activate event
        if (other.CompareTag(activatorTag))
        {
            OnTrigger?.Invoke(other.gameObject);

            if (destroyAfterTrigger)
            {
                Destroy(gameObject);
            }
        }
    }
}
