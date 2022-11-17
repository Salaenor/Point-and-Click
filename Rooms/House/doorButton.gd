extends Button


func _ready():
	$doorLabel.hide()

func _on_doorButton_pressed():
	if Global.hold == "potWithWater" or Global.eventHappen.find("frozenDoor") != -1:
		hide();
	$doorLabel.show()
	
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		$doorLabel.hide()

	
