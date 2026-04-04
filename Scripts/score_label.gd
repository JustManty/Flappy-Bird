extends Label

var _score : int = 0

func score() -> void:
	_score += 1
	text = str(_score)

func reset() -> void:
	_score = 0
	text = str(_score)
