class_name Bird
extends CharacterBody2D

var _gravity : float = 10
var _max_velocity : float = 275
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	velocity.y = clampf(velocity.y + _gravity, _max_velocity * -1, _max_velocity)
	if Input.is_action_just_pressed("flap"):
		velocity.y = _max_velocity * -1
	velocity.x = 0 # Force no horizontal movement
	var collision = move_and_collide(velocity * delta)
	_update_animation()
	if collision:
		var collider = collision.get_collider()
		if collider is Pipe or collider is Ground:
			get_tree().paused = true

func _update_animation() -> void:
	if velocity.y < (_max_velocity - (_max_velocity * 0.4)) * -1:
		animated_sprite_2d.animation = "flap"
	else:
		animated_sprite_2d.animation = "neutral"
	
	animated_sprite_2d.rotation_degrees = clampf(velocity.y / 2, -40, 40)
