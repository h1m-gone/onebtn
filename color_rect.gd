extends ColorRect
var bar = 0
var go = false
func _physics_process(delta: float) -> void:
	bar=custom_minimum_size.y
	if not go:
		bar-=.5

func _on_bop_button_down() -> void:
	bar+=5


func _on_bop_button_up() -> void:
	bar=bar
