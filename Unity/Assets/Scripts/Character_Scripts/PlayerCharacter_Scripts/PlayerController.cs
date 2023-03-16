using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
/// <summary>
/// Script for controlling the player character
/// </summary>
public class PlayerController : Character
{
    #region Data Members
    [Header("Player Character")]
    [Tooltip("Dash speed of the player in m/s")]
    public float dashSpeed;

    [Tooltip("Dash duration of the player in second")]
    public float dashDuration;

    public GameObject dashCollider;

    [Tooltip("How fast the character turns to face movement direction")]
    [Range(0.0f, 0.3f)]
    public float RotationSmoothTime;

    [Tooltip("Acceleration and deceleration")]
    public float SpeedChangeRate;

    public GameObject projectile;

    public int maxMana;
    public Slider manaSlider;

    public int fireballCost;
    public int healCost;

    //
    private Vector2 _move;
    private float _speed;
    private float _targetRotation = 0.0f;
    private Vector3 direction;
    private float _rotationVelocity;
    [HideInInspector] public bool rotationLock;

    private PlayerInputsReceiver _input;

    [HideInInspector] public int currentMana = 0;
    #endregion

    #region Unity Callbacks
    // Start is called before the first frame update
    public override void Start()
    {
        base.Start();

        _input = GetComponent<PlayerInputsReceiver>();

        manaSlider.maxValue = maxMana;
        manaSlider.value = currentMana;
    }

    // Update is called once per frame
    void Update()
    {
        direction = (transform.rotation * Vector3.forward);
    }

    /*void OnEnable()
    {
        GetComponent<HealthController>().OnHealthDepleted += GameController.Instance
    }

    void OnDisable()
    {
        
    }*/
    #endregion

    #region Methods
    public void Move()
    {
        _move = _input.move;

        // set target speed based on move speed, sprint speed and if sprint is pressed
        float targetSpeed = moveSpeed;

        // if there is no input, set the target speed to 0
        if (_move == Vector2.zero) targetSpeed = 0.0f;

        GetToTargetSpeed(targetSpeed);

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
        Vector3 v = targetDirection.normalized * _speed;
        // Gravity
        v.y = rbody.velocity.y;
        rbody.velocity = v;

        // update animator if using character
        if (animator)
        {
            bool walkBool = _move != Vector2.zero;
            animator.SetBool("isWalking", walkBool);
        }
    }

    public void GetToTargetSpeed(float targetSpeed)
    {
        // a reference to the players current horizontal velocity
        float currentHorizontalSpeed = new Vector3(rbody.velocity.x, 0.0f, rbody.velocity.z).magnitude;

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
    }

    public void StopMove()
    {
        _move = Vector2.zero;

        GetToTargetSpeed(0.0f);

        Vector3 targetDirection = Quaternion.Euler(0.0f, _targetRotation, 0.0f) * Vector3.forward;
        rbody.velocity = targetDirection * _speed;

        // update animator if using character
        if (animator)
        {
            animator.SetBool("isWalking", false);
        }
    }

    public void DashStart()
    {
        rbody.AddForce(dashSpeed * direction, ForceMode.Impulse);

        if (animator)
        {
            animator.SetBool("isDashing", true);
        }

        if (audioController)
        {
            audioController.PlayClipAtPoint("Dash");
        }
    }

    public void DashStop()
    {
        rbody.velocity = Vector3.zero;
        _input.dash = false;

        if (animator)
        {
            animator.SetBool("isDashing", false);
        }
    }

    public void SwordAttackStart()
    {
        _input.sword = false;

        LockRotation();

        if (animator)
        {
            animator.SetTrigger("Sword");
        }

        if (audioController)
        {
            audioController.PlayClipAtPoint("SwordSwing");
        }
    }

    public IEnumerator SwordAttackHit(Transform attackOrigin, float attackRadius, float waitTime, StatusEffect inflictEffect)
    {
        yield return new WaitForSeconds(waitTime);

        Collider[] colliders = Physics.OverlapSphere(attackOrigin.position, attackRadius, damageLayer);
        foreach (Collider collider in colliders)
        {
            HealthController health = collider.gameObject.GetComponent<HealthController>();
            if (!health.Invulnerable)
            {
                ChangeMana(+1);
            }
            health.ChangeHealth(-attackDamage);

            //StatusEffectManager effectManager = collider.gameObject.GetComponent<StatusEffectManager>();
            if (inflictEffect && collider.TryGetComponent(out StatusEffectManager effect))
            {
                effect.ApplyEffect(inflictEffect, gameObject);
            }
        }
    }

    public void MagicAttackStart()
    {
        _input.magic = false;

        LockRotation();

        ChangeMana(-fireballCost);

        if (animator)
        {
            animator.SetTrigger("Magic");
        }

        if (audioController)
        {
            audioController.PlayClipAtPoint("Fireball");
        }
    }

    public void MagicAttackFire()
    {
        // Create projectile clone at attackPoint
        GameObject _bullet = Instantiate(projectile, attackOrigin.position, transform.rotation);
        // Initialize projectile
        _bullet.GetComponent<Projectile>().Initialize(gameObject);
    }

    public void LockRotation()
    {
        transform.rotation = rotationLock ? transform.rotation : _input.lookRotation;
        rotationLock = true;
    }

    public void ChangeMana(int changeAmount)
    {
        currentMana += changeAmount;
        currentMana = Mathf.Clamp(currentMana, 0, maxMana);
        manaSlider.value = currentMana;
    }
    #endregion
}
