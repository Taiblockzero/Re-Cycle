extends Control



func _on_start_btn_pressed():

	get_tree().change_scene_to_file("res://Scenes/end_screen.tscn")


func _on_quit_btn_pressed():
	get_tree().quit()
