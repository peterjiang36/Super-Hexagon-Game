extends Camera2D

@export var rotation_speed = 0.01  # Adjust this value to control the rotation speed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		# Rotate the camera every frame
		rotation += rotation_speed * delta
