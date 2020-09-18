extends CanvasLayer


# --------------------------    DECLARE VARIABLES     --------------------------

# Host GUI Nodes references
onready var host_ip_adress_line_edit : LineEdit = $Control/HostContainer/HostAnchorContainer/HostServerIPLineEdit
onready var host_port_line_edit : LineEdit = $Control/HostContainer/HostAnchorContainer/HostServerPortLineEdit
onready var host_server_name_line_edit : LineEdit = $Control/HostContainer/HostAnchorContainer/HostServerNameLineEdit

onready var create_server_button : Button = $Control/HostContainer/HostAnchorContainer/CreateServerButton

# Client GUI Nodes References
onready var join_ip_adress_line_edit : LineEdit = $Control/JoinContainer/JoinAnchorContainer/JoinServerIPLineEdit
onready var join_port_line_edit : LineEdit = $Control/JoinContainer/JoinAnchorContainer/JoinServerPortLineEdit

onready var join_server_button : Button = $Control/JoinContainer/JoinAnchorContainer/JoinServerButton

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	assign_main_menu_values()

# --------------------------    DECLARE FUNCTIONS     --------------------------

# Assign the right values to the text fields in the GUI (IP and port join and host)
func assign_main_menu_values() -> void:
	assign_main_menu_host_values()
	assign_main_menu_join_values()


func assign_main_menu_host_values() -> void:
	host_server_name_line_edit.text = Network.server_name
	host_ip_adress_line_edit.text = Network.server_ip_adress
	host_port_line_edit.text = str(Network.server_port)


func assign_main_menu_join_values() -> void:
	join_ip_adress_line_edit.text = Network.server_ip_adress
	join_port_line_edit.text = str(Network.server_port)


# Create the server when clicking on Create Server button
func _on_CreateServerButton_pressed() -> void:
	# Disable the Create Server button once we created the server already
	# Also disable the Join Server button since we CREATED the sever
	if not Network.is_server_created:
		create_server()
		create_server_button.disabled = true
		join_server_button.disabled = true
	else:
		create_server_button.disabled = true
		join_server_button.disabled = true


func create_server() -> void:
	send_main_menu_host_info()
	Network.create_server()



# Create the Client when clicking on Join Server button
func _on_JoinServerButton_pressed() -> void:
	# Disable the Join Server button once we joined the server already
	# Also disable the Create Server button since we are a CLIENT
	if not Network.is_server_created:
		create_client()
		join_server_button.disabled = true
		create_server_button.disabled = true
	else:
		join_server_button.disabled = true
		create_server_button.disabled = true


func create_client() -> void:
	send_main_menu_join_info()
	Network.create_client()


# Send the host info (IP and port) to update the Network variables
func send_main_menu_host_info() -> void:
	Network.server_name = host_server_name_line_edit.text
	Network.server_ip_adress = host_ip_adress_line_edit.text
	Network.server_port = int(host_port_line_edit.text)


# Send the join info (IP and port) to update the Network variables
func send_main_menu_join_info() -> void:
	Network.server_ip_adress = join_ip_adress_line_edit.text
	Network.server_port = int(join_port_line_edit.text)
