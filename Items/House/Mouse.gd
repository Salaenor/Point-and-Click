extends Node2D

export var id = "";




func _on_couchButton_pressed():
	var tween := create_tween();
	tween.tween_property(self, "position", Vector2(444, 988), 1)
	Global.update_event("mouseMove")

func _on_mouseButton_pressed():
	if Global.eventHappen.find("mouseCaught") != -1:
		hide()
