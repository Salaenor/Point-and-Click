extends Node2D

export var id = "";



func _on_matchButton_pressed():
	if Global.eventHappen.find("couch1") != -1:
		hide();
		Global.update_event("couch2")
	if Global.eventHappen.find("couch1") == -1:
		Global.update_event("couch1")
	
