extends Sprite2D
var a=true
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(11).timeout
		$Parallax2D.position.y+=200
		$Parallax2D.autoscroll=Vector2(0,0)
