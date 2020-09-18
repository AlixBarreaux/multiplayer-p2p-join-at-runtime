extends KinematicBody2D

class_name Player

# --------------------------    DECLARE VARIABLES     --------------------------

onready var player_follow_camera : Camera2D = $Camera2D

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	# Each time a player is added to the scene, the last one added to the scene
	# has the camera following him even if we don't control him if current is 
	# set to true. So we enable it manually here if we control the player
	if self.is_network_master():
		print("YOU ARE THE MASTER OF: ", self.name)
		player_follow_camera._set_current(true)

# --------------------------    DECLARE FUNCTIONS     --------------------------
