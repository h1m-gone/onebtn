extends CharacterBody2D
var direction

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
func _ready() -> void:
	$AnimatedSprite2D.play("idle")
	
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func lvl():
	pass
func gamestart() -> void:
	direction = .6
	$AnimatedSprite2D.play("run")
