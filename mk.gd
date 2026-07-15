extends CharacterBody2D
var a = false
func _physics_process(delta: float) -> void:
	move_and_slide()
	if not a:
		velocity.x-=4
	await get_tree().create_timer(1).timeout
	a = true
