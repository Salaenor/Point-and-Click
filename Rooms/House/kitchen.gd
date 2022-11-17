extends Node2D

var leech = preload("res://Items/House/Leech.tscn")
var pot = preload("res://Items/House/Pot.tscn")
func _ready():
	
	$Leech.hide()
	$Pot.hide()
	room_start()

func room_start():
	if Global.eventHappen.find("fridgeKnob") != -1:
		$fridgeButton.hide();
		$Leech.show();
	if Global.eventHappen.find("cupboardKnob") != -1:
		$cupboardButton.hide();
		$Pot.show();
	if Global.eventHappen.find("matchStove") != -1:
		pass;
	for i in Global.itemCease:
		match i:
			"leech":
				$Leech.hide();
			"pot":
				$pot.hide()
			

func _process(delta):
	if Global.eventHappen.find("potStove") != -1 and Global.eventHappen.find("matchStove") != -1:
		$pot.hide()




