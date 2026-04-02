class_name Pipe
extends StaticBody2D

signal score()

func _process(delta: float) -> void:
	position.x -= 150 * delta
	if position.x < 0 - $"Top Pipe Sprite".get_rect().size.x:
		respawn()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Bird:
		score.emit()

func respawn() -> void:
	position.x = get_viewport().get_visible_rect().size.x + 150
	position.y = randi_range(171, 280)
