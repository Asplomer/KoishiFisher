extends CharacterBody2D


@export var speed = 300.0
@export var focused_speed = 150.0
#var direction = Vector2(0,0)

func _process(delta):
	var movement : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if Input.is_action_pressed("focused"):
		velocity = movement.normalized() * focused_speed
	else:
		velocity = movement.normalized() * speed
	move_and_slide()
	pass
