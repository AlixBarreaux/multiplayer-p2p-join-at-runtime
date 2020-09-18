extends Node2D


# --------------------------    DECLARE VARIABLES     --------------------------

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
#	if not get_tree().is_network_server():
#		request_all_nodes_from_server()
#	send_all_nodes_to_client()
	pass

# --------------------------    DECLARE FUNCTIONS     --------------------------

func request_all_nodes_from_server() -> void:
	rpc_id(1, "send_all_nodes_to_client")


remote func send_all_nodes_to_client() -> void:
	var test = self.duplicate()
	print("WTF IS THAT EVEN???!!!", test.name)
	get_tree().get_root().add_child(test)
#	self.add_child(test)

#	for node in get_children():
#		print(node.name)
#		print("Children" + str(node.get_children()))
