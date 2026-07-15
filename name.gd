extends Node2D
func _physics_process(delta: float) -> void:
	$ColorRect.color=Color(randf(),randf(),randf(),1.0)
	$Label5.visible=true
	await get_tree().create_timer(4).timeout
	$Label.visible=true
	await get_tree().create_timer(2).timeout
	$Label2.visible=true
	await get_tree().create_timer(2).timeout
	$Label3.visible=true
	await get_tree().create_timer(2).timeout
	$Label4.visible=true
