extends Node2D
class_name Player

@export var move_speed := 5.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PlayerSprite/Area2D.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	print(body)
	get_tree().change_scene_to_file("res://Rootscene.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Called every physics tick
func _physics_process(delta: float) -> void:
	# Writing to rotation
	# Workaround to rebuild contacts due to scaling a collision body
	self.rotation -= 0.0

	if Input.is_action_pressed("ui_left"):
		self.rotation -= delta*move_speed
	if Input.is_action_pressed("ui_right"):
		self.rotation += delta*move_speed
