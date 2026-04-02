class_name TitleLabel
extends Label

var growing : bool = true
var rotating_left : bool = false
const MAX_SCALE_CHANGE = 0.10
const MAX_ROTATION_ANGLE = 10

func _process(delta: float) -> void:
	if growing:
		scale.x += 0.04 * delta
		scale.y = scale.x
		if scale.x > (1 + MAX_SCALE_CHANGE):
			growing = false
	else:
		scale.x -= 0.04 * delta
		scale.y = scale.x
		if scale.x < (1 - MAX_SCALE_CHANGE):
			growing = true
	
	if rotating_left:
		rotation_degrees -= 6 * delta
		if rotation_degrees < (0 - MAX_ROTATION_ANGLE):
			rotating_left = false
	else:
		rotation_degrees += 6 * delta
		if rotation_degrees > (0 + MAX_ROTATION_ANGLE):
			rotating_left = true
