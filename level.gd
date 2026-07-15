extends Node2D

func starbtnpressed() -> void:
	$Button.queue_free()
	$Label2.visible = true


func offscreen(body: Node2D) -> void:
	if body.has_method('lvl'):
		get_tree().change_scene_to_file("res://level_1.tscn")
