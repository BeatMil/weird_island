extends Node2D

var destination = Vector2(500,500)
onready var Camera2D = get_node("Camera2D")

func _ready():
	$icon2.position.x += 100


func _physics_process(_delta):
	pass


func _on_click_area_clicked():
	Camera2D.move_camera(Vector2(0,-600))


