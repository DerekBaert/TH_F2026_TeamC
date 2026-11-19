extends CharacterBody2D

var speed = 400
var projectile_shot = false
var current_mouse_pos

func _physics_process(_delta):
	move_and_slide()
	if projectile_shot == false:
		$".".position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile") and projectile_shot == false:
		shoot_projectile()
	if $".".position == current_mouse_pos:
		projectile_shot = false

func shoot_projectile():
	current_mouse_pos = (get_global_mouse_position())
	$".".position = $"../Player".position
	look_at(get_global_mouse_position())
	velocity = ((get_global_mouse_position()) - $"../Player".position).normalized() * speed
	projectile_shot = true

func screen_exited():
	projectile_shot = false
