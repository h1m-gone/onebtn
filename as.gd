extends Label
var b =str("")
var a =true
func _physics_process(delta: float) -> void:
	text=b
	if a:
		await get_tree().create_timer(12).timeout
		visible=true
		if is_inside_tree():
			await get_tree().create_timer(5).timeout
		b=str("yea")
		if is_inside_tree():
			await get_tree().create_timer(5).timeout
		b=str("got any change")
		if is_inside_tree():
			await get_tree().create_timer(3).timeout
		b=str("bruh, hes gone")
