extends Panel

var ItemClass = preload("res://Scenes/item.tscn")
var item = null

# Called when the node enters the scene tree for the first time.
func _ready():
	
	#if randi() % 2 ==0:	
		item =ItemClass.instantiate()
		add_child(item)


