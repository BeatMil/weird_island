extends Node2D

var destination = Vector2(500,500)

func _ready():
	$icon2.position.x += 100


func _physics_process(_delta):
	pass

func _on_click_area_clicked():
	godot_tween()


func beat_tween(delta):
	var start = $icon2.position
	var smooth = 0.6
	var diff = destination - start
	var smooth_motion = diff * smooth * delta
	$icon2.position += smooth_motion

func godot_tween():
	var tween = get_node("Tween")
	tween.interpolate_property($icon2,"position",
			Vector2(100,300), Vector2(500,300), 3,
			Tween.TRANS_EXPO, Tween.EASE_IN_OUT)
	tween.start()
