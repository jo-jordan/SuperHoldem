extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const card_map = {
	0: 0,
	
}

func get_card_list():
	return {
		"self_list": [10, 12], # card index in file system
		"common_list": [14, 34, 51, 33, 32], # card index in file system
		"other_list": [1, 2, 5, 7], # seat index
	}



# Called when the node enters the scene tree for the first time.
func _ready():
	var cardInfo = get_card_list()
	
	var sl = cardInfo["self_list"]
	var cl = cardInfo["common_list"]
	var ol = cardInfo["other_list"]
	
	var offsetX = 118 * 0.6
	
	var cnr:Resource = preload("res://CardNode.tscn")
	
	# fill self area
	var spa = $SelfPokerArea
	for i in sl.size():
		var cn:CardNode = cnr.instance()
		cn.cardIndex = sl[i]
		cn.translate(Vector2(i * offsetX, 0))
		spa.add_child(cn)

	
	# fill other areas
	for i in ol.size():
		for j in 2:
			var opa = get_node("OtherPokerArea" + str(i + 1))
			var cn:CardNode = cnr.instance()
			cn.cardIndex = 0
			
			cn.translate(Vector2(j * offsetX, 0))
			opa.add_child(cn)
		
	
	# fill common area
	for i in cl.size():
		var cpa = get_node("CommonPokerArea")
		var cn:CardNode = cnr.instance()
		cn.cardIndex = cl[i]
		cn.translate(Vector2(i * offsetX, 0))
		cpa.add_child(cn)
		
		
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
