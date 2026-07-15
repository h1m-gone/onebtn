extends Sprite2D
var run
var g
func _physics_process(delta: float) -> void:
	if g ==true:
		if run == true:
			$needle.position.x+=.5
		else:
			$needle.position.x-=.5


func _on_bop_button_down() -> void:
	run =true
	g = true

func _on_bop_button_up() -> void:
	run=false
