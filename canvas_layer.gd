extends CanvasLayer

@onready var color_rect: ColorRect = $ColorRect

func _ready() -> void:
	# Forces the black rectangle to be completely transparent at game start
	color_rect.modulate.a = 0.0

## Fades the screen out to black, changes the scene, and fades back i
func transition_to_scene(target_scene_path: String, duration: float = 5) -> void:
	# 1. Fade Out to Black
	var fade_out_tween: Tween = create_tween()
	fade_out_tween.tween_property(color_rect, "modulate:a", 1.0, duration)
	await fade_out_tween.finished
	
	# 2. Change the Scene while the screen is black
	var error: Error = get_tree().change_scene_to_file(target_scene_path)
	if error != OK:
		push_error("Failed to load scene: " + target_scene_path)
		return
	
	# 3. Fade In (Back to transparent)
	var fade_in_tween: Tween = create_tween()
	fade_in_tween.tween_property(color_rect, "modulate:a", 0.0, duration)
	await fade_in_tween.finished


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("next"):
		await get_tree().create_timer(7.4).timeout
		transition_to_scene("res://level_3.tscn")
