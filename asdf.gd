extends Button
var a = true
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(15).timeout
		visible = true

func _on_pressed() -> void:
	visible = false

func _on_button_2_pressed() -> void:
	visible = false
