extends Button

var bul=preload("res://bul.tscn")

func _on_pressed() -> void:
	var go=bul.instantiate()
	go.global_position=$Marker2D.global_position
	get_tree().current_scene.add_child(go)
