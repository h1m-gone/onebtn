extends Node2D
var a =false
var b = true
func _physics_process(delta: float) -> void:
	$cat.play("default")
	await get_tree().create_timer(9.5).timeout
	if a:
		position.x+=2
	if is_inside_tree():
		await get_tree().create_timer(3).timeout
	a=true
	b=true
	if b:
		$Label.visible = true
		if is_inside_tree():
			await get_tree().create_timer(5).timeout
		position.x-=4
		if is_inside_tree():
			await get_tree().create_timer(12).timeout
