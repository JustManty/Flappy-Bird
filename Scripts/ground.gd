class_name Ground
extends StaticBody2D

func _physics_process(delta: float) -> void:
	position.x -= 150 * delta
	if floorf(position.x) < 112:
		position.x += 4 * 20
