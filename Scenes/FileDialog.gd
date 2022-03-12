extends FileDialog

var i: int

func _process(delta):
	if Input.is_action_just_pressed("b_test") \
		and self.visible \
		and self.current_path.length() >= 5:
			i = self.current_path.length() - 1
			
			while i > 5:
				if (self.current_path[i] == "/"):
					self.current_path = self.current_path.substr(0, i)
					return
				
				i -= 1
