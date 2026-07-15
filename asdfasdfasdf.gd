extends Node2D
@onready var a=$Button2/Label
@onready var b=$Button2/Timer
var c=false
func _physics_process(delta: float) -> void:
	$Label.visible = true
	await get_tree().create_timer(2).timeout
	$Label2.visible=true
	await get_tree().create_timer(2).timeout
	$Label3.visible=true
	await get_tree().create_timer(3).timeout
	$Button.visible=true
	$Button2.visible=true


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level.tscn")



func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://name.tscn")
