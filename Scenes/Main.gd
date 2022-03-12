extends Control

var chosen_path: String = ""

func _on_FileDialog_file_selected(path):
	chosen_path = path
	print(path)

func _on_Button_pressed():
	$FileDialog.show()
	$InstallButton.change_visiblity()

func _on_FileDialog_hide():
	if not $InstallButton.visible and chosen_path == "":
		$InstallButton.change_visiblity()
