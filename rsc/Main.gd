extends Control

func _ready():
	OS.center_window()

func _on_Increase_pressed():
    print("obvio")
    # increase_score()
    
func _on_Decrease_pressed():
    pass # Replace with function body.
    
func _on_Boolean_pressed():
    pass # Replace with function body.

func increase_score():
    g.game["score"] += 1
    $Score.text = g.game["score"]
    print(g.game["score"])