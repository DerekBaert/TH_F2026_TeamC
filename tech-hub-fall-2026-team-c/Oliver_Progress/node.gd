extends Node

var projectile_shot = false
var player_pos

func _physics_process(_delta):
	player_pos = $"Player".position
	if Input.is_action_just_pressed("Projectile"):
		projectile_movement()
	if projectile_shot == false:
		$Projectile.position = Vector2(-100, -100)

func projectile_movement():
	projectile_shot = true
