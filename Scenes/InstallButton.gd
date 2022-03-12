extends Control

func _process(delta):
	if Input.is_action_just_pressed("ui_accept") and $Button.visible:
		$Button.emit_signal("pressed")
