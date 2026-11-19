extends CharacterBody2D

var speed = 400
var projectile_shot = false

func _physics_process(_delta):
	move_and_slide()
	if projectile_shot == false:
		$".".position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile") and projectile_shot == false:
		shoot_projectile()

func get_input():
	velocity = ((get_global_mouse_position()) - $"../Player".position).normalized() * speed

func shoot_projectile():
	$".".position = $"../Player".position
	look_at(get_global_mouse_position())
	get_input()
	projectile_shot = true

func screen_exited():
	projectile_shot = false
