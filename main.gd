extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func create_instance(path):
	var scene = load(path)
	var scene_instance = scene.instance()
	return scene_instance

# Called when the node enters the scene tree for the first time.
func _ready():
	var card_nodes: Node2D = create_instance("res://CardNode.tscn")
	var card_nodes1: Node2D = create_instance("res://CardNode.tscn")
	var card_nodes2: Node2D = create_instance("res://CardNode.tscn")
	card_nodes2.translate(Vector2(10, 0))
	var card_nodes3: Node2D = create_instance("res://CardNode.tscn")
	card_nodes3.translate(Vector2(50, 0))
	
	add_child(card_nodes1)
	add_child(card_nodes2)
	add_child(card_nodes3)
	
	var sprite: Sprite = card_nodes.get_node("CardSprite")
	
	var cardList = []
	
	var x = 0
	for i in 51:
		sprite.frame = i
		cardList.append(sprite)
		sprite.transform = Transform2D(Vector2(0, 0), Vector2(0, 0), Vector2(0, 0))
		x+=10
		add_child(sprite as Node2D)

	
	for i in 51:
		print(cardList[i])
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
