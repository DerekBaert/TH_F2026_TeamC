extends CharacterBody2D

@onready var _animated_sprite = $Sprite2D
var speed = 600
var projectile_shot = false
var current_mouse_pos = Vector2.ZERO

func _physics_process(_delta):
	move_and_slide()
	if Input.is_action_just_pressed("Projectile") and projectile_shot == false:
		position = $"../Player".position
		projectile_shot = true
		velocity = ((get_global_mouse_position()) - $"../Player".position).normalized() * speed
		current_mouse_pos = (get_global_mouse_position())
		_animated_sprite.play("throw")
	if projectile_shot == false:
		_animated_sprite.play("throw")
		position = Vector2(-100, -100)
	if (current_mouse_pos - position).length() < 5:
		velocity = Vector2.ZERO
		_animated_sprite.play("explode")
		await get_tree().create_timer(0.5).timeout
		projectile_shot = false
		print("animation_done")
