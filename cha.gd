extends CharacterBody2D
var a= false
func yes():
	pass
func _physics_process(delta: float) -> void:
	move_and_slide()
	$Left/AnimatedSprite2D.play("default")
	$ani.play("bop")
	$mi.play("jk")

func gas() -> void:
	a=true
	velocity.x+=20


func check(body: Node2D) -> void:
	if body.has_method("yes"):
		velocity.x=0
		await get_tree().create_timer(5.75).timeout
		$Left.visible=true
		await get_tree().create_timer(1.5).timeout
		velocity.x+=40
		velocity.y-=40
		await get_tree().create_timer(2).timeout
		velocity.y=-10
		velocity.x=-30
		await get_tree().create_timer(9).timeout
		velocity.y+=10
		velocity.x+=30
		$Button2.visible =true
		


func launch() -> void:
	$AudioStreamPlayer2D.play()
	$Button2.visible = false
	velocity.x=1000
