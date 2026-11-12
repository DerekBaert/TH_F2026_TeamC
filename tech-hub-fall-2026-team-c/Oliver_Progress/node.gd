extends Node

var projectile_shot = false
var player_pos
var velocity = Vector2(100, 0)

func _physics_process(_delta):
	player_pos = $"Player".position
	if Input.is_action_just_pressed("Projectile"):
		projectile_movement()
	if projectile_shot:
		$Projectile.position = player_pos
		$Projectile.velocity = velocity
	else:
		$Projectile.position = Vector2(-100, -100)
		$Projectile.velocity = Vector2(0, 0)

func projectile_movement():
	projectile_shot = true
