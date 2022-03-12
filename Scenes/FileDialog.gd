extends FileDialog

var i: int

func _process(delta):
	if not self.visible:
		return
	
	if Input.is_action_just_pressed("b_test") \
		and self.visible:
			print(self.current_path.count("/") + self.current_path.count("\\"))
			if self.current_path.count("/") + self.current_path.count("\\") > 2:
				i = self.current_path.length() - 1
				
				while i > 5:
					if (self.current_path[i] == "/"):
						self.current_path = self.current_path.substr(0, i)
						return
					
					i -= 1
	
	if Input.is_action_just_pressed("ui_cancel"):
		self.hide()
