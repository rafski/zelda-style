extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("EnemyTimer")
	timer.connect("timeout", self, "_on_Timer_timeout")
	
func _on_Timer_timeout():
	if is_flipped_h():
		set_flip_h(false)
	else:
		set_flip_h(true)
