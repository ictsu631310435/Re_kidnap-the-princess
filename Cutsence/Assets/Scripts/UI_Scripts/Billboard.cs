using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Script for rotating UI to always look at camera
public class Billboard : MonoBehaviour
{
    private Transform _camera; // Camera's transform

    // Start is called before the first frame update
    void Start()
    {
        // Find main camera
        _camera = GameObject.FindGameObjectWithTag("MainCamera").transform;
    }

    // LateUpdate is called every frame, if the Behaviour is enabled
    void LateUpdate()
    {
        // Rotate UI to alway look at camera
        transform.LookAt(transform.position + _camera.forward);
    }
}
