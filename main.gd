extends Node2D

func load_test_title():
	# sample test to add label via script
	var title = Label.new()
	title.text = "Test"
	title.set_size(Vector2(36, 36))
	title.set_position(Vector2(150, 50))
	get_tree().root.add_child(title)
	

func _ready():
	print('main: scene loaded')
	load_test_title()
