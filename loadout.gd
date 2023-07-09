extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print('loadout: scene loaded')


func _on_button_pressed():
	print('loadout-Button: pressed')
	Global.goto_scene("res://main.tscn")
