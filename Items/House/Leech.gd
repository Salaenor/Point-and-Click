extends Node2D

export var id = "";


func _on_fridgeButton_pressed():
	if Global.hold == "Knob":
		self.show()
