extends AnimatedSprite2D
var a =true
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(8).timeout
		visible = true
		await get_tree().create_timer(2).timeout
		$A.visible=true
		if is_inside_tree():
			await get_tree().create_timer(1).timeout
		$A.visible=false
		if is_inside_tree():
			await get_tree().create_timer(1).timeout
		$B.visible=true
		a=false


func _on_button_2_pressed() -> void:
	$B.visible = false
	await get_tree().create_timer(3).timeout
	$meow.play()
	$Bom.visible = true


func _on_button_pressed() -> void:
	$Bom.visible = false
	$B.visible = false
	$Al.visible =true
	$meow.play()
	await get_tree().create_timer(1).timeout
	$Al.visible =false
