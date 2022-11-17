extends ColorRect


var onOff= 0
var empty = true
var itemName = null
var itemFill = null


func _ready():
	#item = beerClass.instance()
	#add_child(item)
	var color = Color.white
	set_self_modulate(color)

func _on_Button_pressed():
	if (empty == false):
		Global.hold = itemName
		if (onOff == 0 and Global.ishold == false):
			var color = Color.webgray
			set_self_modulate(color)
			$Label.text = str(itemName)
			onOff = 1
			Global.ishold = true
			print(Global.hold)
			print(Global.ishold)
		elif (onOff == 1):
			remove();

func fill_slot(item):
	itemFill = item.instance()
	add_child(itemFill);
	itemFill.position = Vector2(45, 45)
	itemName = itemFill.id
	empty = false

func remove_slot(item):
	remove_child(itemFill);
	itemFill = null
	itemName = null
	empty = true
	remove();
	
func remove():
	var color = Color.white
	set_self_modulate(color)
	onOff = 0
	$Label.text = ""
	Global.hold = ""
	Global.ishold = false
	print("nothing held")
	
func _input(event):
	pass;
	#if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		#var color = Color.white
		#set_self_modulate(color)
		#onOff = 0
		#$Label.text = ""
		#Global.hold = ""
		#Global.ishold = false
		#print("nothing held")

