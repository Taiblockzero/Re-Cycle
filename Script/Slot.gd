extends Panel

var emptyTex = preload("res://Assets/inventorySlutTemp.png")

var ItemClass = preload("res://Scenes/item.tscn")

var emptyBox: StyleBoxTexture = null

var item = null
# Called when the node enters the scene tree for the first time.
func _ready():
	
	emptyBox= StyleBoxTexture.new()
	emptyBox.texture= emptyTex
	
	if randi() % 2 ==0:	
		item =ItemClass.instantiate()
		add_child(item)
		
		#when full add reshreshing to check if box is empty or default

func pickFromSlot():
	remove_child(item)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.add_child(item)
	item = null
	#refresh to check if empty or default dont forget to define default vs empty
func putIntoSlot(newItem):
	item = newItem
	item.position = Vector2(0, 0)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.remove_child(item)
	add_child(item)
	
