extends Node2D


signal clicked

func _ready():
	pass # Replace with function body.


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton: # on left click
		if event.is_pressed():
			emit_signal("clicked")

