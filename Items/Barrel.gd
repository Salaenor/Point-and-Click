extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var id = "Barrel"
# Called when the node enters the scene tree for the first time.
func ready():
	pass;
	
func beer_drink():
	if Global.hold == "Beer":
		$Label.text = "Beer full"


func _on_Button_mouse_entered():
	$Label.show()


func _on_Button_mouse_exited():
	$Label.hide()


func _on_Button_pressed():
	beer_drink()
