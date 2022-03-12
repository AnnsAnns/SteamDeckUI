extends Control

var chosen_path: String = ""
var path_chosen: bool = false

func _on_FileDialog_file_selected(path):
	chosen_path = path
	path_chosen = true
	show_game_installer_screen()

func _on_Button_pressed():
	$FileDialog.show()
	
	for object in $FileDialog.get_vbox().get_children():
		if object is MarginContainer:
			for object_object in object.get_children():
				if object_object is Tree:
					object_object.grab_focus()
	
	$MenuButtons/GridContainer/ButtonLabelB.show()
	$MenuButtons/GridContainer/ButtonTextB.show()
	$MenuButtons/GridContainer/ButtonLabelX.show()
	$MenuButtons/GridContainer/ButtonTextX.show()
	$InstallButton.hide()

func _on_FileDialog_hide():
	if not $InstallButton.visible and not path_chosen:
		$InstallButton.show()
	
	$MenuButtons/GridContainer/ButtonLabelB.hide()
	$MenuButtons/GridContainer/ButtonTextB.hide()
	$MenuButtons/GridContainer/ButtonLabelX.hide()
	$MenuButtons/GridContainer/ButtonTextX.hide()

func show_game_installer_screen():
	$MiddleScreenLabel.text = "Sending installation request to Proton ..."
	$MiddleScreenLabel.show()
	OS.execute("notepad.exe",[],false)

func _ready():
	$InstallButton.show()
