extends FileDialog


func _process(delta):
	if Input.is_action_just_pressed("b_test") and self.visible:
		$FileDialog.current_path = "/home/"
