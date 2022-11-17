extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var id = "Beer"
# Called when the node enters the scene tree for the first time.
func ready():
	pass;
	
func _on_Button_pressed():
	hide();


func _on_Button_mouse_entered():
	$Label.show()


func _on_Button_mouse_exited():
	$Label.hide()
