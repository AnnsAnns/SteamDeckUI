extends Control

func _ready():
	# $FileDialog.filters.append("*.exe ; Executable")
	pass

func _on_FileDialog_file_selected(path):
	print(path)

func _on_Button_pressed():
	$FileDialog.show()
	$InstallButton.invisible()
