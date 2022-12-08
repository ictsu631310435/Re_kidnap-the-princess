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
        lookDirection = new Vector3(mousePosition.x, 0.0f, mousePosition.y) - new Vector3(Screen.width / 2, 0.0f, Screen.height / 2);
        lookDirection = lookDirection.normalized;

        lookRotation = Quaternion.LookRotation(lookDirection, Vector3.up);
    }
}
