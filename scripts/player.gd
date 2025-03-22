extends CharacterBody2D

const SPEED = 100  # Velocidad del personaje

func _physics_process(_delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	direction = direction.normalized()  # Evita que el personaje se mueva más rápido en diagonal
	velocity = direction * SPEED  # Aplica la velocidad al personaje
	move_and_slide()
