extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_input_event(viewport, event, shape_idx):
	print(event)
	if event is InputEventMouseButton and event.pressed:
		queue_free()
