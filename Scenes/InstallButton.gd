extends Control

export var is_visible: bool

func change_visiblity():
	$Button.visible = not is_visible;
	$InstallGameLabel.visible = not is_visible;
	$InstallGameLabel2.visible = not is_visible;
	$WhiteTriangle.visible = not is_visible;
