extends CharacterBody2D

@export var speed : int

func _ready():
	speed = 500

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	if Input.is_action_just_pressed("sprint"):
		speed = 900
	if Input.is_action_just_released("sprint"):
		speed = 500
