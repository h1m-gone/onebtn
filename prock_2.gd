extends Area2D
@onready var s = position.x
var rot = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func go():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	await get_tree().create_timer(19).timeout
	position.x-=5
	rotation +=rot*delta


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("go"):
		$MixkitDramaticMetalExplosionImpact1687.play()
		visible = false
		position.x = s
		position.y = randi_range(20,630)
		visible = true
		position.x-=5


func reset(area: Area2D) -> void:
	if area.has_method("go"):
		position.x = s
		position.y = randi_range(20,630)
		position.x-=5
