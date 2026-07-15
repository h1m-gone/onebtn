extends Label
var a = str("no gas?")
func _physics_process(delta: float) -> void:
	text=a
	if visible:
		await get_tree().create_timer(3).timeout
		a=str("sucks to suck then")
