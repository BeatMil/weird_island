extends Camera2D

onready var tween = $Tween
onready var this = $"."

func move_camera(distant:Vector2):
	var current_pos = this.position
	var destination = current_pos + distant
	tween.interpolate_property(this,"position",
			current_pos, destination, 1,
			Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
	tween.start()
