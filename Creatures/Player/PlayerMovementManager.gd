extends Node

class_name PlayerMovementManager

# --------------------------    DECLARE VARIABLES     --------------------------

onready var player = self.get_parent()

master var velocity : Vector2 = Vector2(0, 0)
puppet var replicated_velocity : Vector2 = Vector2(0, 0)

var current_speed : int = 175

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	assert(player is Player)


func _physics_process(_delta : float) -> void:
	get_movement_input()
	
	if self.is_network_master():
		velocity = player.move_and_slide(velocity)
		rset("replicated_velocity", player.position)
	else:
		player.position = replicated_velocity

# --------------------------    DECLARE FUNCTIONS     --------------------------

func get_movement_input() -> void:
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	velocity = velocity.normalized() * current_speed
