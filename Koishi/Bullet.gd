extends Node2D

@export var speed : float = 1200
@export var direction : Vector2
@export var damage : int = 1

func _process(delta):
	translate(speed * delta * direction)

	pass


func set_direction(dir : Vector2):
	direction = dir
	rotation = atan2(direction.y, direction.x)
	pass


func _on_timer_timeout():
	queue_free()
	pass
