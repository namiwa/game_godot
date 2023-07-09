# https://stackoverflow.com/a/74695162
extends Node

var current_scene = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)
	print("Global - current_scene : %s" % current_scene)
	

func goto_scene(path: NodePath):
	# This function will usually be called from a signal 
	# callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is 
	# running:
	print('Global - calling deffered on path: %s' % path)
	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path: NodePath):
	current_scene.free()
	current_scene = load(path as String)
	var tree = get_tree()
	tree.change_scene_to_packed(current_scene)
