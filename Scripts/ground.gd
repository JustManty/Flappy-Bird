class_name Ground
extends StaticBody2D

var _scroll_speed : float = 0

func _physics_process(delta: float) -> void:
	position.x -= _scroll_speed * delta
	if floorf(position.x) == 112:
		position.x += 4 * 20

func update_scroll_speed(speed: float) -> void:
	_scroll_speed = speed
