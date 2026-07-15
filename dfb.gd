extends Label
var s="An ordinary guy decides to
hit the road, again"
func _physics_process(delta: float) -> void:
	text=s
func fingas(body: Node2D) -> void:
	s=str("An ordinary guy decides he never really liked space")
	await get_tree().create_timer(2).timeout
	s=str("He decides that he should maybe fly instead")
	await get_tree().create_timer(2).timeout
	s=str("So he turns on turns on the afterburner in his van")


func _on_button_2_pressed() -> void:
	s=str("But even van-shaped planes needs gas........")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://gasss.tscn")
