extends Area2D

signal health_changed(new_health)
var health = 10

func take_damage(ammount):
	health -= ammount
	if health <0:
		health = 0
		
	emit_signal("health_changed", health)
	print_debug("hit")
		
func _on_area_entered(area):
	take_damage(1)
	 

