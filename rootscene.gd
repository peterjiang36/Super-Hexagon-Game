extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$GameTimer.start()




func _on_game_timer_timeout() -> void:
	print("Timer Stop")
