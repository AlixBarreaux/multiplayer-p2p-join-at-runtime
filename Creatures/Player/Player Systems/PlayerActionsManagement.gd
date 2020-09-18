extends Node


# --------------------------    DECLARE VARIABLES     --------------------------

onready var sprays : Node2D = get_tree().get_root().get_node("Game/Sprays")

onready var player = self.get_parent()

# Spray timer cooldown path
onready var spray_cooldown_timer : Timer = $SprayCoolDown

# Spray scene instancing
const SPRAY_SCENE_PATH : String = "res://Sprays/Spray.tscn"
var spray_preload = preload(SPRAY_SCENE_PATH)
# Spray variables
var can_use_spray : bool = true

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	pass


func _physics_process(_delta : float) -> void:
	if self.is_network_master():
		get_action_input()


# --------------------------    DECLARE FUNCTIONS     --------------------------



onready var terrain_tilemap : TileMap = get_tree().get_root().get_node("Game/Terrain")

func get_action_input() -> void:
	# SPRAY
	if Input.is_action_just_pressed("spray"):
		print(player.name, " Spray key pressed!")
		if can_use_spray:
			# Check if spray is instanced already in Sprays
			var _spray_instance = spray_preload.instance()
			# Get self name instead of TESTSPRAY!
			_spray_instance.set_name("TESTSPRAY" + str(get_tree().get_network_unique_id()))
			_spray_instance.global_position = player.global_position
			sprays.add_child(_spray_instance)

			can_use_spray = false
			spray_cooldown_timer.start()


	# MODIFY TILEMAP
	if Input.is_action_just_pressed("primary_action"):
		print("Primary action button pressed!")
		if get_tree().is_network_server():
			send_tilemap_modification(player.get_global_mouse_position())
		else:
			request_tilemap_modification(player.get_global_mouse_position())


func request_tilemap_modification(player_mouse_global_position : Vector2) -> void:
	rpc_id(1, "send_tilemap_modification", player_mouse_global_position)


# SERVER only modifies the tile
remote func send_tilemap_modification(player_mouse_global_position : Vector2) -> void:
	if get_tree().is_network_server():
		modify_tilemap(player_mouse_global_position)
		rpc("modify_tilemap", player_mouse_global_position)


# Modify the tilemap on SERVER and CLIENT
remote func modify_tilemap(player_mouse_global_position : Vector2) -> void:
	print("Modifying tilemap: ", terrain_tilemap.name, " at position global mouse position: ", player.get_global_mouse_position())
	terrain_tilemap.set_cellv(terrain_tilemap.world_to_map(player_mouse_global_position), terrain_tilemap.TILE_TYPES.DIRT)



func _on_SprayCoolDown_timeout():
	can_use_spray = true


