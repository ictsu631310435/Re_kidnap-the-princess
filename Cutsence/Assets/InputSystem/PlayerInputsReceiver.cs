using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerInputsReceiver : MonoBehaviour
{
    [Header("Character Input Values")]
    public Vector2 move;
    public bool dash;
    public bool sword;
    public bool magic;
    public Vector2 mousePosition;

    public Vector3 lookDirection;
    public Quaternion lookRotation;

    public bool heal;

    private Camera _mainCamera;

    void Start()
    {
        _mainCamera = Camera.main;    
    }

    public void OnMove(InputValue value)
    {
        MoveInput(value.Get<Vector2>());
    }

    public void OnDash(InputValue value)
    {
        DashInput(value.isPressed);
    }

    public void OnSwordAttack(InputValue value)
    {
        SwordInput(value.isPressed);   
    }

    public void OnMagicAttack(InputValue value)
    {
        MagicInput(value.isPressed);
    }

    public void OnLook(InputValue value)
    {
        LookInput(value.Get<Vector2>());
    }

    public void OnHeal(InputValue value)
    {
        HealInput(value.isPressed);
    }

    public void MoveInput(Vector2 newMoveDirection)
    {
        move = newMoveDirection;
    }

    public void DashInput(bool newDashState)
    {
        dash = newDashState;
    }

    public void SwordInput(bool newSwordState)
    {
        sword = newSwordState;
    }

    public void MagicInput(bool newMagicState)
    {
        magic = newMagicState;
    }

    public void LookInput(Vector2 newLookDirection)
    {
        mousePosition = newLookDirection;
        
        // lookDirection = Vector3 of mousePosition - Vector3 of half screen resolution
        //lookDirection = new Vector3(mousePosition.x, 0.0f, mousePosition.y) - new Vector3(Screen.width / 2, 0.0f, Screen.height / 2);
        //lookDirection = lookDirection.normalized;

        //lookRotation = Quaternion.LookRotation(lookDirection, Vector3.up);

        Ray ray = _mainCamera.ScreenPointToRay(mousePosition);
        if (Physics.Raycast(ray, out RaycastHit hit) && hit.collider)
        {
            Vector3 hit2D = new Vector3(hit.point.x, 0.0f, hit.point.z);
            lookDirection = (hit2D - transform.position).normalized;
            lookRotation = Quaternion.LookRotation(lookDirection, Vector3.up);
        }
    }

    public void HealInput(bool newHealState)
    {
        heal = newHealState;
    }

    public void ResetInputValues()
    {
        move = Vector2.zero;
        dash = false;
        sword = false;
        magic = false;
        //mousePosition = Vector2.zero;
        lookDirection = Vector3.zero;
        lookRotation = Quaternion.identity;
        heal = false;
    }
}
