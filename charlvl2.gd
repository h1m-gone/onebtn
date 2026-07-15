extends CharacterBody2D
var max = 0
var ga = false
var en = false
var final = false
func no():
	pass
func _physics_process(delta: float) -> void:
	if max<15 && ga && not en :
		max+=-1
		position.x-=.7
	if final&& position.x<1250:
		position.x+=14
	if position.x>1160:
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file("res://level_2.tscn")
func gas() -> void:
	$"mi".play("drive")
	if max <15 && not en:
		ga = true
		position.x +=20
		max+=1

func _on_area_2d_body_entered(body: Node2D) -> void:
	en = true


func _on_bop_button_down() -> void:
	$ani.play("bop")
	$mi.play("jk")


func _on_bop_button_up() -> void:
	$ani.pause()
	$mi.play("drive")




func jmp(body: Node2D) -> void:
	if body.has_method("no"):
		$mi.rotation =-25
		$ani.rotation = -25
		$mi.position.y -= 55
		$ani.position.y -=55
		await get_tree().create_timer(1.0).timeout
		$mi.rotation =0
		$ani.rotation =0
		$mi.position.y +=55
		$ani.position.y +=55


func endscene(body: Node2D) -> void:
	$ani.play("bop")
	final = true
	
