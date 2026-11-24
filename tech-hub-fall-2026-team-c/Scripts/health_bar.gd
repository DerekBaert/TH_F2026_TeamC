extends ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_health_health_changed(current_health: Variant, max_health: Variant) -> void:
	max_value = max_health
	value = current_health
