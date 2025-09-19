extends CharacterBody2D
const speed = 300
const jump = -400
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump
	if Input.is_action_just_pressed("forward"):
		velocity.x += speed
	if Input.is_action_just_pressed("backward"):
		velocity.x -= speed
	move_and_slide()
