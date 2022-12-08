using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : Character
{
    [Header("Player extention")]
    [Tooltip("Dash speed of the player in m/s")]
    public float dashSpeed;

    [Tooltip("Dash duration of the player in second")]
    public float dashDuration;

    [Tooltip("How fast the character turns to face movement direction")]
    [Range(0.0f, 0.3f)]
    public float RotationSmoothTime;

    [Tooltip("Acceleration and deceleration")]
    public float SpeedChangeRate;

    [Tooltip("Character model")]
    public GameObject character;

    // player
    private Vector2 _move;
    private float _speed;
    private float _targetRotation = 0.0f;
    [HideInInspector] public Vector3 direction;
    private float _rotationVelocity;
    [HideInInspector] public bool rotationLock;

    private Animator _animator;
    private Rigidbody _rigidbody;
    private PlayerInputsReceiver _input;

    private bool _hasAnimator;

    // Start is called before the first frame update
    void Start()
    {
        _hasAnimator = character.TryGetComponent(out _animator);
        _rigidbody = GetComponent<Rigidbody>();
        _input = GetComponent<PlayerInputsReceiver>();
    }

    // Update is called once per frame
    void Update()
    {
        direction = (transform.rotation * Vector3.forward).normalized;
    }

    public void Move()
    {
        _move = _input.move;

        // set target speed based on move speed, sprint speed and if sprint is pressed
        float targetSpeed = moveSpeed;

        // if there is no input, set the target speed to 0
        if (_move == Vector2.zero) targetSpeed = 0.0f;

        // a reference to the players current horizontal velocity
        float currentHorizontalSpeed = new Vector3(_rigidbody.velocity.x, 0.0f, _rigidbody.velocity.z).magnitude;

        float speedOffset = 0.1f;

        // accelerate or decelerate to target speed
        if (currentHorizontalSpeed < targetSpeed - speedOffset ||
            currentHorizontalSpeed > targetSpeed + speedOffset)
        {
            // creates curved result rather than a linear one giving a more organic speed change
            // note T in Lerp is clamped, so we don't need to clamp our speed
            _speed = Mathf.Lerp(currentHorizontalSpeed, targetSpeed,
                Time.deltaTime * SpeedChangeRate);

            // round speed to 3 decimal places
            _speed = Mathf.Round(_speed * 1000f) / 1000f;
        }
        else
        {
            _speed = targetSpeed;
        }

        // normalise input direction
        Vector3 inputDirection = new Vector3(_move.x, 0.0f, _move.y).normalized;

        // if there is a move input rotate player when the player is moving
        if (_move != Vector2.zero)
        {
            _targetRotation = Mathf.Atan2(inputDirection.x, inputDirection.z) * Mathf.Rad2Deg;
            float rotation = Mathf.SmoothDampAngle(transform.eulerAngles.y, _targetRotation, ref _rotationVelocity, 
                RotationSmoothTime);

            // rotate to face input direction relative to camera position
            transform.rotation = Quaternion.Euler(0.0f, rotation, 0.0f);
        }

        Vector3 targetDirection = Quaternion.Euler(0.0f, _targetRotation, 0.0f) * Vector3.forward;

        // move the player
        _rigidbody.velocity = targetDirection.normalized * _speed;

        // update animator if using character
        if (_hasAnimator)
        {
            bool walkBool = _move != Vector2.zero;
            _animator.SetBool("isWalking", walkBool);
        }
    }

    public void StopMove()
    {
        _move = Vector2.zero;
        _rigidbody.velocity = Vector3.zero;

        // update animator if using character
        if (_hasAnimator)
        {
            _animator.SetBool("isWalking", false);
        }
    }

    public void DashStart()
    {
        _rigidbody.AddForce(dashSpeed * direction, ForceMode.Impulse);

        if (_hasAnimator)
        {
            _animator.SetBool("isDashing", true);
        }
    }

    public void DashStop()
    {
        _rigidbody.velocity = Vector3.zero;
        _input.dash = false;

        if (_hasAnimator)
        {
            _animator.SetBool("isDashing", false);
        }
    }

    public void SwordAttackStart()
    {
        _input.sword = false;

        LockRotation();

        if (_hasAnimator)
        {
            _animator.SetTrigger("Sword");
        }
    }

    public void MagicAttackStart()
    {
        _input.magic = false;

        LockRotation();

        if (_hasAnimator)
        {
            _animator.SetTrigger("Magic");
        }
    }

    public void LockRotation()
    {
        transform.rotation = rotationLock ? transform.rotation : _input.lookRotation;
        rotationLock = true;
    }
}
