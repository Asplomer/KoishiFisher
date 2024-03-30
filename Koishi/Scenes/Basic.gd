extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var MyMovement : Vector2 = Vector2(1.0,0.0)
var moving : bool = false 
var lookingRight : bool = false
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")

#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
	if !moving:
		PleaseStop()
	moving = false
	if lookingRight:
		$KoshAnimation.animation = "Right"
	else:
		$KoshAnimation.animation = "Left"
	move_and_slide()


func _on_bubbly_control_bluesignal():
	#left
	lookingRight =false
	moving = true
	velocity.x = -SPEED
	pass # Replace with function body.


func _on_bubbly_control_greensignal():
	#jump
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	velocity.y = JUMP_VELOCITY
	pass # Replace with function body.


func _on_bubbly_control_redsignal():
	#right
	lookingRight =true
	moving = true
	velocity.x = SPEED
	pass # Replace with function body.

func PleaseStop():
	velocity.x = move_toward(velocity.x, 0, SPEED)
pass
