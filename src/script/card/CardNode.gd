extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
class_name CardNode

var cardIndex: int


func _init(curCardIndex:int = 0):
	cardIndex = curCardIndex

func load_card():
	var cardSprite = $CardSprite
	cardSprite.texture = load("res://assets/pokers/poker"+ str(cardIndex) + ".png")
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	load_card()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
