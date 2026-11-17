extends CharacterBody2D

var test = Vector2(0, 0)#(get_global_mouse_position()) - $"../Player".position
var projectile_shot = true
var projectile_vector = Vector2(0, 0)

func _physics_process(_delta):
	move_and_slide()
	if projectile_shot == false:
		$".".position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile"):
		shoot_projectile()

func get_input():
	velocity = test

func shoot_projectile():
	projectile_shot = true
	look_at(get_global_mouse_position())
	get_input()

func screen_exited():
	projectile_shot = false
