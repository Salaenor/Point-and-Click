extends Node2D

var knob = preload("res://Items/House/Knob.tscn")
var matches = preload("res://Items/House/Match.tscn")
var mouse = preload("res://Items/House/Mouse.tscn")

func _ready():
	room_start()

func room_start():
	if Global.eventHappen.find("frozenDoor") != -1:
		$doorButton.hide();
	if Global.eventHappen.find("mouseMove") != -1:
		$Mouse.position = Vector2(444, 988)
	for i in Global.itemCease:
		match i:
			"knob":
				$knobButton.hide();
			"mouse":
				$Mouse.hide();
			"matches":
				$Match.hide();


