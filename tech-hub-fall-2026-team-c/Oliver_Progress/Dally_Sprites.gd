extends AnimatedSprite2D

@onready var _animated_sprite = $"."

func _physics_process(_delta):
	if Input.is_action_pressed("right"):
		_animated_sprite.play("right")
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("left")
	elif Input.is_action_pressed("up"):
		_animated_sprite.play("up")
	elif Input.is_action_pressed("down"):
		_animated_sprite.play("down")
	else:
		_animated_sprite.stop()
