extends Node2D

var glass = preload("res://Items/House/Glass.tscn")
var picture = preload("res://Items/House/Picture.tscn")
var knob = preload("res://Items/House/Knob.tscn")
var matches = preload("res://Items/House/Match.tscn")
var mouse = preload("res://Items/House/Mouse.tscn")
#Use to keep tracking of items that have been collected, events and inventory
var eventHappen = []
var itemCease = []
var inventory = {}
var hold = ""
var ishold = false
var cutscene = false
# Called when the node enters the scene tree for the first time.
func update_item(item):
	itemCease.append(item)

func update_inventory(slot, item):
	inventory[slot] = item

	
	
	
func update_event(event):
	eventHappen.append(event)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
