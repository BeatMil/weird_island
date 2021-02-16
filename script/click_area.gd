extends Node2D
export var group_name = ""

signal clicked

func _ready():
	add_to_group(group_name)
	pass # Replace with function body.


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton: # on left click
		if event.is_pressed():
			emit_signal("clicked")

