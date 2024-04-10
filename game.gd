extends Control


const InputResponse = preload("res://input_response.tscn")

# sets the given path on ready for changes, the path must be available for it to access
# this version the onready event requires "@" to work
# thos is for ease of access to the given scene
@onready var history_rows = $Background/MarginContainer/Rows/GameInfo/ScrollContainer/HistoryRows


func _on_input_text_submitted(new_text: String) -> void:
	var input_response = InputResponse.instantiate() #InputResponse is the name of the node in input_response
	input_response.set_text(new_text, "This is where a response would go.")
	history_rows.add_child(input_response) #Adding the input_response scene
