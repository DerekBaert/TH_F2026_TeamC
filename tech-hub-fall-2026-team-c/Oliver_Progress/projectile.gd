extends CharacterBody2D

@onready var _animated_sprite = $Sprite2D
var speed = 600
var projectile_shot = false
var current_mouse_pos = Vector2.ZERO

func _physics_process(_delta):
	move_and_slide()
	if projectile_shot == false:
		position = Vector2(-100, -100)
	if Input.is_action_just_pressed("Projectile") and projectile_shot == false:
		velocity = ((get_global_mouse_position()) - $"../Player".position).normalized() * speed
		current_mouse_pos = (get_global_mouse_position())
		position = $"../Player".position
		look_at(get_global_mouse_position())
		projectile_shot = true
		_animated_sprite.play("throw")
	if (current_mouse_pos - position).length() < 7:
		velocity = Vector2.ZERO
		_animated_sprite.play("explode")
		await get_tree().create_timer(0.45).timeout
		projectile_shot = false
