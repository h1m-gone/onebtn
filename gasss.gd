extends Node2D
var a =true
func _physics_process(delta: float) -> void:
	if a:
		await get_tree().create_timer(25.5).timeout
	if is_inside_tree():
		get_tree().change_scene_to_file("res://finall.tscn")
