extends Label

func _on_Area2D_health_changed(new_health):
	set_text("bonk")
	print_debug(new_health)
