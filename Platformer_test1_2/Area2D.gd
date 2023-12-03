extends Area2D
var entered = false
var next_level = "res://level2.tscn"

func _physics_process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("enter"):
			get_tree().change_scene_to_file(next_level)

func _on_body_entered(body: PhysicsBody2D):
	if body.is_in_group("Player"):
		entered = true
