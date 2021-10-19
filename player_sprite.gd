extends AnimatedSprite

var SPRITES_MAP := {
	Vector2.UP: "move_up",
	Vector2.DOWN: "move_down",
	Vector2.RIGHT: "move_right",
	Vector2.LEFT: "move_left",
	Vector2(1.0, 1.0): "move_d_r",
	Vector2(1.0, -1.0): "move_u_r",
	Vector2(-1.0, -1.0): "move_u_l",
	Vector2(-1.0, 1.0): "move_d_l"
}

var look_direction := Vector2.RIGHT

func _process(_delta: float) -> void:
	var input_vector := Vector2(
		float(Input.is_action_pressed("ui_right")) - float(Input.is_action_pressed("ui_left")),
		float(Input.is_action_pressed("ui_down")) - float(Input.is_action_pressed("ui_up"))
		)
	if input_vector.length() > 0.0 and input_vector != look_direction:
		play(SPRITES_MAP[input_vector])
		look_direction = input_vector
