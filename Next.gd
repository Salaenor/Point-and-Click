tool

extends Node2D

export(String, FILE) var next_scene_path = ""

func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "next_scene_path must be set for portal to work"
	else:
		return ""


func _on_Button_pressed():
	if get_tree().change_scene(next_scene_path) != OK:
		print("Error: No scene available")
	Global.ishold = false
	
