extends Node2D

"""
Script responsible of the player spawning system within the network.
Anyone who joins loads this script which is attached to the Node2D 'Players'.
If we are the SERVER, it spawns its own player.
If we are the CLIENT, it first requests the server to spawn all the other players.
Then, the CLIENT requests to spawn its own player.
"""

# --------------------------    DECLARE VARIABLES     --------------------------

var player_spawn_points_node_path : String = "Game/PlayerSpawnPoints"
onready var player_spawn_points : Node2D = get_tree().get_root().get_node(player_spawn_points_node_path)

const PLAYER_SCENE_PATH : String = "res://Creatures/Player/Player.tscn"

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	# Connect to the Network signal when a peer is unregistered (disconnected 
	# from server)
	Network.connect("peer_unregistered", self, "on_peer_unregistered")
	
	# The SERVER creates his player because it's the first to arrive
	if get_tree().is_network_server():
		spawn_player(1)
	else:
		request_all_other_players_spawn(get_tree().get_network_unique_id())


		# CLIENT who just joined tells the server to spawn its player
		print("[CLIENT] Telling the server to spawn the joined client (me) !")
		request_player_spawn(get_tree().get_network_unique_id())


# --------------------------    DECLARE FUNCTIONS     --------------------------

# CLIENT requests the server to spawn the other players
func request_all_other_players_spawn(peer_id : int) -> void:
	print("[CLIENT] Client (me) ", peer_id, " is requesting all other players spawn...")
	rpc_id(1, "send_all_other_players_spawn", peer_id)


# SERVER spawns the players on the CLIENT who requested it
remote func send_all_other_players_spawn(peer_id : int) -> void:
	if get_tree().is_network_server():
		print("How many players are instanced on the server already: ", self.get_child_count())
		
		# Loop through all the children of Players (self) and spawn a player
		# on EVERYONE with their name (which is a peer ID)
		for instanced_player in self.get_children():
			print(instanced_player.name)
			rpc_id(peer_id, "spawn_player", int(instanced_player.name))


# CLIENT requests the SERVER to spawn a player (normally only himself)
func request_player_spawn(peer_id : int) -> void:
	print("Requesting player spawn with peer_id: ", peer_id)
	rpc_id(1, "send_player_spawn", peer_id)


# SERVER tells ITSELF and CLIENTS to spawn a player (spawn_player is remotesync)
remote func send_player_spawn(peer_id : int) -> void:
	if get_tree().is_network_server():
		print("Sending player spawn with peer_id: ", peer_id)
		rpc("spawn_player", peer_id)


# EVERYONE spawns a player
remotesync func spawn_player(peer_id : int) -> void:
	print("[SELF] Spawning player with ID: " + str(peer_id))

	var _player_instance : Node = preload(PLAYER_SCENE_PATH).instance()

	# Set the name of the player instanced node to the peer_id (Like "42561943")
	_player_instance.name = str(peer_id)

	# Set the node network master
	_player_instance.set_network_master(peer_id)
	# Set the position of the new player instance
	_player_instance.global_position = player_spawn_points.get_child(0).global_position
	self.add_child(_player_instance)


# Respond to a peer disconnection in the Network singleton by despawning the
# peer (player) on EVERYONE
func on_peer_unregistered(peer_id : int) -> void:
	send_player_despawn(peer_id)


# SERVER tells EVERYONE to despawn the disconnected player
func send_player_despawn(peer_id : int) -> void:
	print("[SERVER] Telling clients to despawn the player who just leaved with ID: ", peer_id)
	for player_to_despawn in self.get_children():
		print("Searching in the players...")
		if player_to_despawn.name == str(peer_id):
			print("[SERVER] Player to despawn found: ", player_to_despawn.name)
			print("[SERVER] Player to despawn path: ", player_to_despawn.get_path())
			rpc("despawn_player", player_to_despawn.get_path())

			# Stop looping through all the players because we found the player
			# to despawn already
			break


# EVERYONE despawns the specified player node
remotesync func despawn_player(player_to_despawn_path) -> void:
	print("[SELF] Despawning the player who just leaved with path: ", player_to_despawn_path)
	var player_to_despawn = get_node(player_to_despawn_path)
	self.remove_child(player_to_despawn)
