extends KinematicBody2D

var acceleracio : Vector2 
export var velocitat_max = 500


func _ready():
	pass
	
func _process(delta):
#	var n1 = rand_range(-250, 250)
#	var n2 = rand_range(-250, 250)
#	var rot = rand_range(-3600, 3600)
#	var velocitat := Vector2(n1,n2)
	
	#if Input.is_action_pressed("ui_accept"):
	#	rotation_degrees+=rot
	#	position +=velocitat * delta
	var velocitat = Vector2.ZERO
	if Input.is_action_pressed("down"):
		velocitat +=Vector2(0,30)
	if Input.is_action_pressed("up"):
		velocitat +=Vector2(0,-30)
	if Input.is_action_pressed("right"):
		velocitat +=Vector2(30,0)
	if Input.is_action_pressed("left"):
		velocitat +=Vector2(-30,0)
	if Input.is_action_pressed("rotate_left"):
		rotation_degrees -= 15
	if Input.is_action_pressed("rotate_right"):
		rotation_degrees += 15
	velocitat = velocitat.normalized()*velocitat_max
	var resultat_moviment = move_and_slide(velocitat, Vector2.UP)
	


func _on_Davant_body_entered(body):
	print("Tinc un cos davant", body.name)
