extends Node2D

var red : bool = false
var green : bool = false
var blue : bool = false

signal redsignal()
signal bluesignal()
signal greensignal()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	
	if Input.is_action_pressed("Click"):
		if red:
			emit_signal("redsignal")
		if blue:
			emit_signal("bluesignal")
		if green:
			emit_signal("greensignal")
	pass




func _on_area_green_mouse_entered():
	green = true
	pass # Replace with function body.


func _on_area_red_mouse_entered():
	red = true
	pass # Replace with function body.


func _on_area_blue_mouse_entered():
	blue = true
	pass # Replace with function body.


func _on_area_blue_mouse_exited():
	blue=false
	pass # Replace with function body.


func _on_area_red_mouse_exited():
	red=false
	pass # Replace with function body.


func _on_area_green_mouse_exited():
	green = false
	pass # Replace with function body.
