﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementController : MonoBehaviour
{
    public float movementSpeed = 3.0f;
    Vector2 movement = new Vector2();

    Animator animator;
    string animationState = "AnimationState";
    Rigidbody2D rb2D;

    enum CharStates
    {
        idle = 0,
        walkLeft = 1,
        walkRight = 2
    }

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        rb2D = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void Update()
    {
        UpdateState();
    }

    private void FixedUpdate()
    {
        MoveCharacter();
    }

    private void MoveCharacter()
    {
        movement.x = Input.GetAxisRaw("Horizontal");
        movement.y = Input.GetAxisRaw("Vertical");

        movement.Normalize();
        rb2D.velocity = movement * movementSpeed;
    }

    private void UpdateState()
    {
        if (movement.x > 0) // rechts d
        {
            animator.SetInteger(animationState, (int)CharStates.walkRight);

        }
        else if (movement.x < 0) // links a
        {
            animator.SetInteger(animationState, (int)CharStates.walkLeft);
        }
        else if (movement.y > 0) // oben w
        {
            animator.SetInteger(animationState, (int)CharStates.walkRight);
        }
        else if (movement.y < 0) // unten s
        {
            animator.SetInteger(animationState, (int)CharStates.walkLeft);
        }
        else
        {
            animator.SetInteger(animationState, (int)CharStates.idle);
        }
    }
}