extends CharacterBody2D

@export var speed : int

func _ready():
	NodeRefs.player_ref = self
	speed = 500

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
