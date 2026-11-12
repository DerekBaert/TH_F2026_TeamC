extends CharacterBody2D

var projectile_shot = false

func _physics_process(_delta):
	if projectile_shot:
		look_at(get_global_mouse_position())
	else: $".".position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile"):
		shoot_projectile()

func shoot_projectile():
	projectile_shot = true

func screen_exited():
	projectile_shot = false
	
