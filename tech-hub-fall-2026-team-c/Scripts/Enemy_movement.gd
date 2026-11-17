extends RigidBody2D

var move : Vector2
@export var speed = 15
var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = %player


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move = position - player.position 
	
