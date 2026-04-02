class_name TitleLabel
extends Label

var growing : bool = true
const MAX_SCALE_CHANGE = 0.15

func _process(delta: float) -> void:
	if growing:
		scale.x += 0.05 * delta
		scale.y = scale.x
		if scale.x > (1 + MAX_SCALE_CHANGE):
			growing = false
	else:
		scale.x -= 0.05 * delta
		scale.y = scale.x
		if scale.x < (1 - MAX_SCALE_CHANGE):
			growing = true
