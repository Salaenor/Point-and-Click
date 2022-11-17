extends Node2D

var matches = preload("res://Items/House/Match.tscn")

func _ready():
	room_start()

func room_start():
	for i in Global.itemCease:
		match i:
			"glass":
				$Glass.hide()
			"picture":
				$Picture.hide()





