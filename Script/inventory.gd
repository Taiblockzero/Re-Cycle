extends Node2D

const SlotClass = preload("res://Script/Slot.gd")
@onready var inventorySlots =$gridcontainer
var holdingItem = null

# Called when the node enters the scene tree for the first time.
func _ready():
	for invSlot in inventorySlots.get_children():
		invSlot.gui_input.connect(slot_gui_input.bind(invSlot))

func slot_gui_input(event: InputEvent, slot: SlotClass):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
			if holdingItem != null:
				if !slot.item:
					slot.putIntoSlot(holdingItem)
					holdingItem = null
				else:
					var tempItem = slot.item
					slot.pickFromSlot()
					tempItem.global_position = event.global_position
					slot.putIntoSlot(holdingItem)
					holdingItem = tempItem
			elif slot.item:
				holdingItem = slot.item
				slot.pickFromSlot()
				holdingItem.global_position = get_global_mouse_position()
				
func _input(event):
	if holdingItem:
		holdingItem.global_position = get_global_mouse_position()
