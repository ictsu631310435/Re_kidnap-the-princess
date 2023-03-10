using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CinemachineCameraSwitcher : MonoBehaviour
{
    [SerializeField] private CinemachineBrain _cinemachineBrain;
    [SerializeField] private CinemachineVirtualCamera _currentCamera;

    IEnumerator Start()
    {
        _cinemachineBrain = Camera.main.GetComponent<CinemachineBrain>();

        yield return null;

        _currentCamera = _cinemachineBrain.ActiveVirtualCamera as CinemachineVirtualCamera;
    }

    // Method for switching cameras
    public void SwitchCamera(CinemachineVirtualCamera newCamera)
    {
        newCamera.gameObject.SetActive(true);

        _currentCamera.gameObject.SetActive(false);
        _currentCamera = newCamera;
    }
}
