extends GPUParticles2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate(0.1)
	
	
	#rotation_degrees +=5
	pass


func _on_timer_timeout():
	emitting= true
	pass # Replace with function body.
