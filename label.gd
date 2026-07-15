extends Label
var a =true
func _physics_process(delta: float) -> void:
	if a:	
		await get_tree().create_timer(4).timeout
		$Label.visible =true
		await get_tree().create_timer(4).timeout
		$Label.visible=false
		visible=false
		a=false
