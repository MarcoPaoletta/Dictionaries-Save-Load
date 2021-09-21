extends Node

"""
- DICTIONARY WHERE WE STORE THE MAIN GAME DATA LIKE THESE
- TO MAKE DATA WE PUT: "THE NAME OF THE VAR " : INF
- WE CAN ACCES AND MODIFY DATA EASILY FOR EX: 
var to_save = {
   "score" : 0
}
to_save["score"] += 1

- A DICT CAN STORE ANOTHER DICT: (MAYBE IS BETTER IF WE JUST USE 1 DICT AND WE
LEFT SPACES SO THAT WE DO NOT HAVE A GIANT PIECE OF ROOT. I DO NOT KNOW
IF THERE IS ANOTHER WAY TO DO THIS, BUT THE BEST WOULD BE TO USE SPACES)
var test_dict = {
	"colors" : 10,
	"connfig" : {
		"volume" : 80,
		"bright" : 100,
	"objects" : {
		"apples" : 3,
		"banana" : 1
	}
		
	}
}

func _ready():
	print(test_dict["colors"])
	print(test_dict["connfig"]["volume"])
	print(test_dict["connfig"]["bright"])
	print(test_dict["connfig"]["objects"]["apples"])
	print(test_dict["connfig"]["objects"]["banana"])

"""

var game = {
	"score" : 0,
	"highscore" : 0,
	"bg_color" : Color(1, 1, 1),
	"list" : [true, false]
}

# SAVE SYSTEM
var path = "user://save.sv" # FILE PATH
func save_data():
	var save_file = File.new() # CREATE FILE
	save_file.open(path, File.WRITE) # OPEN IT IN THE PATH AND WRITE IN IT
	var data = {
		"game" : game # TO STORE VAR
	}
	save_file.store_var(data) # STORE
	save_file.close() # CLOSE

# LOAD SYSTEM
func load_data():
	var save_file = File.new() # GO TO THE FILE AGAIN
	if !save_file.file_exists(path): # IF IT DOES NOT EXIST
		return # WE RETURN SO THAT IT WILL BE CREATED
	save_file.open(path, File.READ) # OEN IT IN THE PATH AND READ IT
	var data = save_file.get_var() # CREATE A VAR TO GET THE VAR STORED IN THE FILE
	game = data["game"] # MODIFY THE DATA IN THE DICT
	save_file.close() # CLOSE
