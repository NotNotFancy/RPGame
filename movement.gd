extends CharacterBody2D

var speed = 400  # speed in pixels/sec

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		speed = 800
	else:
		speed = 400
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()
