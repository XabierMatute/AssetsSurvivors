extends AnimatedSprite2D

var busy = false
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
#
#func _play(name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	#if (animation == "hurt"):
		#busy = true
		#print(busy)
	#else:
		#if busy:
			#return
#
#func _on_animation_finished() -> void:
	#busy = false
	#print("unbussing")
#
##func _on_animation_changed() -> void:
	##if (animation == "hurt"):
		##busy = true
		##print(busy)
	##else:
		##busy = false
