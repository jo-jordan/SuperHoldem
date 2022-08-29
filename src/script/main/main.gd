extends Node2D

func create_instance(path):
	var scene = load(path)
	var scene_instance = scene.instance()
	return scene_instance

	
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(create_instance("res://src/script/table/Table.tscn"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
