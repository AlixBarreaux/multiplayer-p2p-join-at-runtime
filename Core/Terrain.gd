extends TileMap


# --------------------------    DECLARE VARIABLES     --------------------------

enum TILE_TYPES {EMPTY = -1
DIRT,
GRASS,
STONE
}

# Public or private with arguments in functions for transfer? What about save sys?
var saved_cells : Array = []
puppet var replicated_saved_cells : Array = []

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	if not get_tree().is_network_server():
		request_used_cells_by_id()


# --------------------------    DECLARE FUNCTIONS     --------------------------

func request_used_cells_by_id() -> void:
	rpc_id(1, "send_used_cells_by_id")


remote func send_used_cells_by_id() -> void:
	if get_tree().is_network_server():
		save_all_used_cells()

		rset("replicated_saved_cells", saved_cells)
		# Send the informations to the CLIENT who requested it
		rpc_id(get_tree().get_rpc_sender_id(), "receive_cells_from_server")


remote func receive_cells_from_server() -> void:
	print("[CLIENT] Receiving cells from server!")
	load_all_used_cells()


func save_all_used_cells() -> void:
	# Clear saved_cells
	saved_cells = []
	for cell_id in TILE_TYPES.values():
		# We don't need to store the empty cells, so we exclude it
		if cell_id == -1:
			continue
		saved_cells.append(self.get_used_cells_by_id(cell_id))


func load_all_used_cells() -> void:
	self.clear()
	print("[CLIENT] Loading all cells!")
#	print("Replicated saved cells: ", replicated_saved_cells)
	var index = -1

	# Retrieve the tile ID in the saved_cells array
	for tile_id in replicated_saved_cells:
		index += 1
#		print("Loading tile ID: ", tile_id)
		for tile in tile_id:
#			print("Loading tile at position: ", tile)
			self.set_cellv(tile, index)
