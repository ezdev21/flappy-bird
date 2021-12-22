extends Node2D

signal Score 
const SPEED=200

func _physics_process(delta):
	position.x+=-SPEED*delta
	if global_position.x<=-200:
		queue_free()
		#global_position.x=500


func _on_Pipe_body_entered(body):
	if body is Player:
		if body.has_method('die'):
			body.die()


func _on_Pipe2_body_entered(body):
	if body is Player:
		if body.has_method('die'):
			body.die()


func _on_ScrollArea_body_exited(body):
	if body is Player:
		emit_signal('score')
