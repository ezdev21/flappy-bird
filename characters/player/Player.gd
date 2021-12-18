extends RigidBody2D

export var FLAP_FORCE=-200

var started=false
onready var animator=$AnimationPlayer

func _physics_process(delta):
	if Input.is_action_just_pressed('flap'):
	   if !started:
		  start()
		  flap()
func start():
	if started: return
	started=true
	gravity_scale=5.0
	animator.play('flap')
	
	
func flap():
	linear_velocity.y=FLAP_FORCE
		
