extends CharacterBody2D
var a =true
var b = true
var c = true
var d = true
func _physics_process(delta: float) -> void:
	$Left/AnimatedSprite2D.play("default")
	if a:
		$"ani/Label".visible=false
		$"ani/Camera2D".offset.y =0
		$mi.play("jk")
		$ani.play("bop")
		position.x+=1
		position.y+=2
		await get_tree().create_timer(2.5).timeout
		a=false
	if b:
		$mi.play("jk")
		$ani.play("wr")
		rotation-=.01
		await get_tree().create_timer(.4).timeout
		rotation-=.0001
		$"Left/AnimatedSprite2D".play("new_animation")
		$"Left/AnimatedSprite2D".stop()
		$mi.stop()
		await get_tree().create_timer(.1).timeout
		b=false
	if d:
		$ani.play("wr")
		$ani.position.x+=.1
	await get_tree().create_timer(6).timeout
	d = false
	$ani.play("idle")
	if true:
		if is_inside_tree():
			await get_tree().create_timer(2).timeout
		$"ani/Label".visible=true
