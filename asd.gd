extends Button
var a = true
var b = false
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(15).timeout
		visible = true
		a=false
	if b:
		visible =false
func _on_button_pressed() -> void:
	visible = false


func _on_pressed() -> void:
	b=true
