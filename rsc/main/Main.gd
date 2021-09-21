extends Control

func _ready():
	g.load_data()
	$Score.text = str(g.game["score"])
	VisualServer.set_default_clear_color(g.game["bg_color"])
	$High.text = str(g.game["highscore"])
	OS.center_window()

func _on_Increase_pressed():
	g.game["score"] += 1
	$Score.text = str(g.game["score"])
	g.save_data()
	
func _on_ColorPickerButton_color_changed(color):
	g.game["bg_color"] = color
	VisualServer.set_default_clear_color(color)
	g.save_data()

func _on_IncreaseHigh_pressed():
	g.game["highscore"] += 1
	$High.text = str(g.game["highscore"])
	g.save_data()
