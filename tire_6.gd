extends Sprite2D
var roll
var hitt
func _process(delta: float) -> void:
	if roll ==true:
		position.x-=5
	if roll==true && hitt ==true:
		position.x-=4
		position.y-=13


func hit(body: Node2D) -> void:
	if body.has_method('no'):
		hitt = true


func _on_tre_body_entered(body: Node2D) -> void:
	await get_tree().create_timer(6.5).timeout
	roll =true
