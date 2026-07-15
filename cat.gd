extends AnimatedSprite2D
var o =true

func _process(delta: float) -> void:
	if o ==true:
		play("default")
		o=false
		await get_tree().create_timer(5.7).timeout
		$meow.play()
		$bub.visible = true
		$bub.play("1")
		await get_tree().create_timer(2.5).timeout
		$bub.visible = false
		await get_tree().create_timer(3.2).timeout
		$meow.play()
		$bub.visible = true
		$bub.play("2")
