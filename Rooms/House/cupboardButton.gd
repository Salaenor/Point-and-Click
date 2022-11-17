extends Button


func _on_cupboardButton_pressed():
	if Global.hold == "Knob":
		Global.update_event("cupboardKnob")
		hide()
		
