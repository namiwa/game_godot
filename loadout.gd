extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	print('loadout: button loaded')


func _pressed():
	print('loadout-Button: pressed')
	Global.goto_scene("res://main.tscn")
