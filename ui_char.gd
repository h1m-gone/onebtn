extends Sprite2D
func _physics_process(delta: float) -> void:
	$cat.play("default")
	$Sprite2D2/char/ani.play("g")
