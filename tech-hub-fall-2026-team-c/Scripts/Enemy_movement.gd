extends RigidBody2D

var move : Vector2
@export var speed = 400
var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move = player.position - position
	move = move.normalized()
	linear_velocity += ((move * speed) * delta)
	
