extends Node


# --------------------------    DECLARE VARIABLES     --------------------------

# ----------------------------    RUN THE CODE     -----------------------------

# --------------------------    DECLARE FUNCTIONS     --------------------------

func request_node_update(node_path : NodePath) -> void:
	if not get_tree().is_network_server():
		rpc_id(1, "send_node_update", node_path, get_tree().get_rpc_sender_id())


remote func send_node_update(node_path, peer_id : int) -> void:
	print("Requesting node update with node path: ", str(node_path))
	print("Name of the requested node: ", get_node(node_path).name)
	print("Type of the children nodes: ", get_node(node_path).get_children())
	if get_node(node_path).get_child_count() > 0:
		for node in get_node(node_path).get_children():
			print("[SERVER] This is a node to send: ", node.name)
			print("File name: ", node.filename)
			var _node_file_path = node.filename

			var _node_name : String = str(node.name)
			# ONLY FOR THE PLAYER NODE! Set name to the Player ID
			if node is Player:
				
				print("Peer ID: ", peer_id)
				_node_name = str(peer_id)
				print("FINAL NODE NAME: ", _node_name)

			rpc_id(peer_id, "receive_node_update", node, _node_file_path, _node_name)
	else:
		print("No child node to send in send_node_update!")


remote func receive_node_update(node_to_update, node_file_path, _node_name : String) -> void:
	print("[CLIENT] The received nodes we have to update is: ", node_to_update)
	print("[CLIENT] The node name is: ", _node_name)

	var _node_to_update_path : String = str(node_file_path)
	print("[CLIENT] The node file path is: ", node_file_path)
	var _node_to_update_instance = load(_node_to_update_path).instance()

	self.add_child(_node_to_update_instance)

	emit_signal("node_updated")
