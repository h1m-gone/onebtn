extends AnimatedSprite2D
var turn=0
var rot =.1
var b = true
var l=0
func _on_button_pressed() -> void:
	rotation +=rot
	turn +=1
	
func _physics_process(delta: float) -> void:
	position.y-=l
	if turn>15:
		play("new_animation")
		$go.play()
		turn-=10
		b=false

var a=0
func launch() -> void:
	a=a+1
	if a==4:
		l=4
		$go.play()
		await get_tree().create_timer(3).timeout
		get_tree().change_scene_to_file("res://space.tscn")
