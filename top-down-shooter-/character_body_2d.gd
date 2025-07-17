extends CharacterBody2D


var direction: Vector2 = Vector2.ZERO
@export var speed = 100

func _process(delta):
	direction = Input.get_vector("Left","Right","Up","Down")	
func _physics_process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()
