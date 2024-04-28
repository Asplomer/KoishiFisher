extends Node2D

var bullet_scene = preload("res://Scenes/Bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(0.1)

	

func _on_timer_timeout():
	
	pass # Replace with function body.


func _on_timer_between_bullets_timeout():
	var bullet = bullet_scene.instantiate()
	get_tree().root.add_child(bullet)
	bullet.global_position = global_position
	var direction = Vector2(cos(rotation), sin(rotation))
	bullet.set_direction(direction)
	pass # Replace with function body.
