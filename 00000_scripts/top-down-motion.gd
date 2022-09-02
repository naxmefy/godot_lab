extends KinematicBody2D

var movespeed = 500

func _physics_process(delta):
    var motion = Vector2()

    if Input.is_action_pressed("up"):
        motion.y -= 1
        
    if Input.is_action_pressed("down"):
        motion.y += 1
        
    if Input.is_action_pressed("right"):
        motion.y += 1

    if Input.is_action_pressed("left"):
        motion.y -= 1

    motion = motion.normalized()
    motion = move_and_slide(motion + movespeed)
    look_at(get_global_mouse_position())