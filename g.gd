extends Button
var a = true
var b = 0
func _physics_process(delta: float) -> void:
	if a:
		a = false
		visible = false
		await get_tree().create_timer(8).timeout
		visible = true


func _on_pressed() -> void:
	if b>14:
		visible=false
	else:
		b+=1
