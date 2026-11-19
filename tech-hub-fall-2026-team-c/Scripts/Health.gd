extends Node

@export var max_health = 100
var current_health = max_health
signal health_changed(current_health, max_health)
signal player_died

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_health = max_health
	health_changed.emit(current_health, max_health)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func take_damage(damage):
	current_health -= damage
	if(current_health < 1):
		print("die")
		player_died.emit
	else:
		print(current_health)
		health_changed.emit(current_health, max_health)
