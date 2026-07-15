extends Node2D

func CARSTOP(body: Node2D) -> void:
	$"1".visible = false
	$"gas".visible = false
	$"2".visible = true
	$"bop".visible=true
	$"gauge".visible=true


func tire(area: Area2D) -> void:
	$"bop".visible = false
	$"gauge".visible = false
	$"2".visible = false


func _on_tre_body_entered(body: Node2D) -> void:
	if body.has_method("no"):
		await get_tree().create_timer(.75).timeout
		$"3".visible = true
		await get_tree().create_timer(1.0).timeout
		$"3".visible = false
		$"3".visible = true
		await get_tree().create_timer(1).timeout
		$"4".visible = true
		await get_tree().create_timer(1).timeout
		$"5".visible = true
		await get_tree().create_timer(.5).timeout
		$"bop".visible = true


func endscene(body: Node2D) -> void:
	$"3".visible = false
	$"4".visible = false
	$"5".visible = false
	$"bop".visible = false
