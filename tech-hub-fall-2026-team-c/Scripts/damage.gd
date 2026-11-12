extends Node




func _on_body_entered(body: Node2D) -> void:
	body.get_node("Health").take_damage(1)
