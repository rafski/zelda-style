extends KinematicBody2D

export var speed = 200

func _physics_process(_delta: float) -> void:
	var input_vector := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up") 
		)
		
	var move_direction := input_vector.normalized()
	move_and_slide(speed * move_direction)
