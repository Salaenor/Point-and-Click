extends Button


func _on_fridgeButton_pressed():
	if Global.hold == "Knob":
		Global.update_event("fridgeKnob")
		hide()
