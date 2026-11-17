extends CharacterBody2D

var projectile_shot = false
var projectile_vector = Vector2(0, 0)

func _physics_process(_delta):
	if projectile_shot == false:
		$".".position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile"):
		shoot_projectile()

func shoot_projectile():
	look_at(get_global_mouse_position())
	projectile_shot = true

func screen_exited():
	projectile_shot = false
