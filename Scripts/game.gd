class_name GameController
extends Node

signal reset()

func _ready() -> void:
	$"Gameplay Loop".process_mode = Node.PROCESS_MODE_PAUSABLE
	process_mode = Node.PROCESS_MODE_ALWAYS
	get_tree().paused = true

func _process(delta: float) -> void:
	if get_tree().paused:
		if Input.is_action_just_pressed("flap"):
			_start_game()

func _start_game() -> void:
	get_tree().paused = false
	$UI/TitleLabel.visible = false
	$UI/ScoreLabel.visible = true
	reset.emit()
