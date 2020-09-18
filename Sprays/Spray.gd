extends Sprite


# --------------------------    DECLARE VARIABLES     --------------------------

# ----------------------------    RUN THE CODE     -----------------------------

func _ready() -> void:
	pass

# --------------------------    DECLARE FUNCTIONS     --------------------------



func _on_SelfDeletionTimer_timeout():
	self.queue_free()
