extends Button
var c =0
var a=str("3")
var g=0
func _physics_process(delta: float) -> void:
	text=a
func _on_pressed() -> void:
	c=c+1
	if c==1:
		a=str("2")
	elif c==2:
		a=str("1")
	elif c==3:
		a=str("LauncH!!")


func _on_button_pressed() -> void:
	g=g+1
	if g>15:
		visible=true
