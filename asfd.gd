extends Button
var a = true
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(35).timeout
		a = false
		visible=true


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://crashland.tscn")
