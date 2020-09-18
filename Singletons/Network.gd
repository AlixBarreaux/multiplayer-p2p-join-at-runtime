extends Node

"""
Script responsible of managing the network between all the peers, be it the
SERVER or the CLIENTS.
"""

# --------------------------    DECLARE VARIABLES     --------------------------

# Scene paths
const GAME_SCENE_PATH : String = "res://Core/Game.tscn"

# Server/client infos
var peer
var server_ip_adress : String = "127.0.0.1"
var server_port : int = 17017
var server_name : String = "Default Server Name"
var max_peer_amount : int = 4

var is_server_created : bool = false
var is_client_created : bool = false

# Peer IDs
var self_peer_id : int = -1
var player_id_list : Array = []
puppet var replicated_player_id_list : Array = []

# Peers joining queue
var is_new_peer_joining : bool = false
var peer_registration_queue_list : PoolIntArray = []

# Signals (custom)
signal peer_registered
signal peer_unregistered

# ----------------------------    RUN THE CODE     -----------------------------

# --------------------------    DECLARE FUNCTIONS     --------------------------



# SERVER SIDE
# Create the server
func create_server() -> void:
	peer = NetworkedMultiplayerENet.new()
	# Make the server appear in the LAN games list
	if not is_server_created:
		if "192.168.0" in server_ip_adress:
			print("Your are using a LAN adress, it will appear in the LAN games list!")

		var create_server_error = peer.create_server(server_port, max_peer_amount)

		# Check if error couldn't be created and print an error message
		if create_server_error:
			print("(!) ERROR CREATING THE SERVER! ERROR CODE: ", peer.create_server(server_port, max_peer_amount))
			return

		get_tree().set_network_peer(peer)

		# Connect the basic network signals for peer dis/connected
		connect_server_signals()

		is_server_created = true
		print("Created server with name: ", server_name, " IP: ",  server_ip_adress, " Port: ", server_port)

		register_self_peer()

		preload_game_scene(GAME_SCENE_PATH)


	else:
		print("You created the server already!")
		return


# Shut down the server
func shutdown_server() -> void:
	# Disconnects the server properly to send disconnected signal properly to clients
	peer.close_connection()
	# Quit the whole game (temporary)
	get_tree().quit()


# PRE INIT: Load the game scene
# Executed by CLIENT and SERVER
remote func preload_game_scene(scene : String) -> void:
	get_tree().change_scene(scene)


# Connect the basic network related signals for the server
func connect_server_signals() -> void:
	peer.connect("peer_connected", self, "on_peer_connected_to_server")
	peer.connect("peer_disconnected", self, "on_peer_disconnected_from_server")

	self.connect("peer_registered", self, "on_peer_registered")


# Function responding to the signal 'peer_connected'
func on_peer_connected_to_server(id : int) -> void:
	print("A peer connected to the server with ID: ", str(id))
	add_peer_to_peer_registration_queue_list(id)
	register_next_peer_from_peer_registration_queue_list()


# The SERVER knows a CLIENT just quit and unregisters the player
# The player_id_list will then be updated on the clients
# May take 5 to 10s if the client didn't close the game properly (eg: alt + f4)
func on_peer_disconnected_from_server(id : int) -> void:
	print("A peer disconnected from the server with ID: ", str(id))
	unregister_peer(id)







# CLIENT SIDE

func create_client() -> void:
	peer = NetworkedMultiplayerENet.new()
	peer.create_client(server_ip_adress, server_port)
	get_tree().set_network_peer(peer)
	connect_client_signals()
	is_client_created = true
	print("Created client with ID: ", get_tree().get_network_unique_id())


# The CLIENT leaves the network and [in the future] goes back to the main menu
func close_client() -> void:
	# Disconnect properly from the server to send disconnected signal properly
	peer.close_connection()
	# Quit the whole game (temporary)
	get_tree().quit()


# Connect the basic network related signals for the client
func connect_client_signals() -> void:
	peer.connect("connection_failed", self, "on_connection_to_server_failed")
	peer.connect("connection_succeeded", self, "on_connection_to_server_succeeded")
	peer.connect("server_disconnected", self, "on_server_disconnected")


# Response to basic network client signals
func on_connection_to_server_failed() -> void:
	printerr("(!) The connection to the server failed!")


# Response to the signal 'connection_succeeded' emitted by the CLIENT when he
# successfully established the connection to the server
func on_connection_to_server_succeeded() -> void:
	print("Connection to server established! Your ID: ", str(get_tree().get_network_unique_id()))
	print("You connected to the server which has IP: ", str(server_ip_adress), " and Port: ", str(server_port))


# Response to the signal 'server_disconnected' emitted by the CLIENT when the 
# server shut down the connection
func on_server_disconnected() -> void:
	print("The server shut down the connection!")
	self.close_client()


# Add a peer to the registration QUEUE list. This queue prevents having different
# IDs not being the same on each client. That's why we queue them to ensure we
# add them one by one to have exactly the same peer ID list
func add_peer_to_peer_registration_queue_list(id : int) -> void:
	print("Adding peer to registration queue list! ID: ", id)
	peer_registration_queue_list.append(id)


# Remove the peer from the registration QUEUE list
func remove_peer_from_peer_registration_queue_list() -> void:
	print("Removing peer from registration queue list! ID to be deleted: ", peer_registration_queue_list[0])
	peer_registration_queue_list.remove(0)
	print("Peer removed from 'peer_registration_queue_list'! Peers remaining in the list: ", peer_registration_queue_list)


# We register peers remaining in the peer registering queue until no more are remaining.
func register_next_peer_from_peer_registration_queue_list() -> void:
	if not peer_registration_queue_list:
		print("No more player to register from the peer_registration_queue_list!")
		send_player_id_list_to_clients()
		return
	if not is_new_peer_joining:
		is_new_peer_joining = true
		print("The slot for registration is free! Taking it!")
		# Register the peers by order of the first who joined
		register_peer(peer_registration_queue_list[0])
	else:
		print("A peer is being registered right now, please wait!")


# Response to the signal peer_registered emitted in the function register_peer.
# That means the peer is done being registered in the peer_id_list.
# We then register the next peers in the queue.
func on_peer_registered() -> void:
	print("ON PEER REGISTERED")
	remove_peer_from_peer_registration_queue_list()
	register_next_peer_from_peer_registration_queue_list()


# The SERVER registers its self peer
func register_self_peer() -> void:
	self_peer_id = get_tree().get_network_unique_id()
	if get_tree().is_network_server():
		player_id_list.append(self_peer_id)
		print("[SERVER] Player ID list after your (self) registration: ", player_id_list)


# The SERVER registers the new player and once it's done it loads the Game Scene
func register_peer(id : int) -> void:
	print("[SERVER] Registering peer! Network connected peers: ", get_tree().get_network_connected_peers())
	# Add the new client peer from the peer_registration_queue_list at the last
	# index of the player_id list
	player_id_list.append(id)
	print("Player ID list after peer registration: ", player_id_list)

	is_new_peer_joining = false
	emit_signal("peer_registered")
	
	rpc_id(id, "preload_game_scene", GAME_SCENE_PATH)


# A peer disconnected from the server, so we unregister him from the player_id_list
func unregister_peer(peer_id : int) -> void:
	print("[SERVER] Unregistering peer with ID: ", peer_id)
	if peer_id in player_id_list:
		var _player_to_remove_id_index = player_id_list.find(peer_id)
		player_id_list.remove(_player_to_remove_id_index)
	else:
		printerr("(!) ERROR: Could not unregister_peer that doesn't exist in the player_id_list!")
	print("Player with ID: ", peer_id, " has been removed from the player_id_list!")
	# Update the player list on the CLIENTS
	send_player_id_list_to_clients()
	emit_signal("peer_unregistered", peer_id)


# The SERVER sends the player_id_list to the clients and updates it for itself
func send_player_id_list_to_clients() -> void:
	if get_tree().is_network_server():
		update_player_list_on_server()
		print("[SERVER] Sending the player list to the clients: ", player_id_list)


		# Setting the replicated_player_list value of the CLIENTS TO
		# the player_id_list value OF the SERVER
		rset("replicated_player_id_list", player_id_list)
		rpc("update_player_list_on_clients")

		print("[SERVER] Player_id_list: ", player_id_list)
		print("[SERVER] Replicated player_id_list: ", replicated_player_id_list)


# The player_id_list is replicated on the CLIENTS
func update_player_list_on_server() -> void:
	# Update it on the SERVER as well
	replicated_player_id_list = player_id_list


remote func update_player_list_on_clients() -> void:
	print("[CLIENT] Replicated player_id_list in update_player_list_on_clients: ", replicated_player_id_list)


# --------------------------- UPNP AND UDP ------------------------------------

#func _ready() -> void:
##	test_upnp()
##	test_udp()
#	pass
#
#func _physics_process(delta):
#	if Input.is_action_just_pressed("move_right"):
#		udp.put_packet("UDPpacketreceived".to_ascii())
#
#var done : bool = false
#var udp
#
#func test_udp() -> void:
#	udp = PacketPeerUDP.new()
#
#	# Listen for incoming packets
#	udp.listen(server_port, "*", 65536)
#	print("Is the UDP peer listening: ", udp.is_listening())
#
#	# Send a packet on the network to anyone who listens
#	# Enable ability to send packets
#	udp.set_broadcast_enabled(true)
#	udp.set_dest_address("127.0.0.1", server_port)
#
#	while not done:
#		yield(get_tree().create_timer(1), "timeout")
#		if udp.get_available_packet_count() > 0:
#			var data = udp.get_packet().get_string_from_ascii()
#			if data == "UDPpacketreceived":
#				done = true
#			else:
#				print("Waiting for data to be sent!")
#	print("Closing the network and the game!")
#	udp.close()
#	get_tree().quit()
#
#
#
##	print("LOCAL ADDRESSES: ", IP.get_local_addresses())
##	print("LOCAL INTERFACES: ", IP.get_local_interfaces())
#
#func test_upnp() -> void:
#	var upnp = UPNP.new()
#	upnp.discover(2000, 2, "InternetGatewayDevice")
##	upnp.add_port_mapping(server_port)
##
### To close a specific port (e.g. after you have finished using it):
#	upnp.delete_port_mapping(server_port)
