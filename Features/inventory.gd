extends Node2D


var glass = preload("res://Items/House/Glass.tscn")
var picture = preload("res://Items/House/Picture.tscn")
var knob = preload("res://Items/House/Knob.tscn")
var matches = preload("res://Items/House/Match.tscn")
var mouse = preload("res://Items/House/Mouse.tscn")
var pot = preload("res://Items/House/Pot.tscn")
var slotItems = {}
var slotsNode = [$TextureRect/Slot1, $TextureRect/Slot2, $TextureRect/Slot3, 
$TextureRect/Slot4, $TextureRect/Slot5, $TextureRect/Slot6, $TextureRect/Slot7]
func _ready():
	position.x = 1532.316
	position.y = 0
	room_start()
	

func _process(delta):
	if Global.eventHappen.find("fridgeKnob") != -1 and Global.eventHappen.find("cupboardKnob") != -1:
		remove_item(knob)
	if Global.eventHappen.find("matchStove") != -1:
		remove_item(matches)


func room_start():
	
	if Global.inventory.keys().has(0) and Global.inventory[0] != null:
		$TextureRect/Slot1.fill_slot(Global.inventory[0])
		
	if Global.inventory.keys().has(1) and Global.inventory[1] != null:
		$TextureRect/Slot2.fill_slot(Global.inventory[1])
	
	if Global.inventory.keys().has(2) and Global.inventory[2] != null:
		$TextureRect/Slot3.fill_slot(Global.inventory[2])
		
	if Global.inventory.keys().has(3) and Global.inventory[3] != null:
		$TextureRect/Slot4.fill_slot(Global.inventory[3])
		
	if Global.inventory.keys().has(4) and Global.inventory[4] != null:
		$TextureRect/Slot5.fill_slot(Global.inventory[4])
		
	if Global.inventory.keys().has(5) and Global.inventory[5] != null:
		$TextureRect/Slot6.fill_slot(Global.inventory[5])
		
	if Global.inventory.keys().has(6) and Global.inventory[6] != null:
		$TextureRect/Slot7.fill_slot(Global.inventory[6])
	

func add_item(item):
	slotsNode = [$TextureRect/Slot1, $TextureRect/Slot2, $TextureRect/Slot3, 
$TextureRect/Slot4, $TextureRect/Slot5, $TextureRect/Slot6, $TextureRect/Slot7]
	var count = 0
	for i in slotsNode:
		if (i.empty == true):
			i.fill_slot(item)
			Global.update_inventory(count, item)
			break;
		count +=1

func remove_item(item):
	slotsNode = [$TextureRect/Slot1, $TextureRect/Slot2, $TextureRect/Slot3, 
$TextureRect/Slot4, $TextureRect/Slot5, $TextureRect/Slot6, $TextureRect/Slot7]
	var count = 0
	for i in slotsNode:
		if (i.itemName == item.instance().id):
			i.remove_slot(item)
			Global.update_inventory(count, null)
			break;
		count +=1


func _on_glassButton_pressed():
	add_item(glass)
	Global.update_item("glass")
	

func _on_pictureButton_pressed():
	add_item(picture)
	Global.update_item("picture")
	

func _on_knobButton_pressed():
	add_item(knob)
	Global.update_item("knob")
	Global.update_event("knob")


func _on_matchButton_pressed():
	if Global.eventHappen.find("couch1") != -1:
		add_item(matches)
		Global.update_item("matches")


func _on_mouseButton_pressed():
	if Global.hold == "Glass":
		remove_item(glass)
		add_item(mouse)
		Global.update_item("mouse")
		Global.update_event("mouseCaught")


func _on_stoveButton_pressed():
	if Global.hold == "Match":
		Global.update_event("matchStove")
	if Global.hold == "Pot" and Global.eventHappen.find("matchStove") != -1:
		remove_item(pot)
		Global.update_event("potStove")

func _on_cupboardButton_pressed():
	pass # Replace with function body.


func _on_potButton_pressed():
	add_item(pot)
	Global.update_item("pot")
