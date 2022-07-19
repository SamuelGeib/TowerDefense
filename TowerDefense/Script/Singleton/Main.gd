extends Node

var RootNodes = {"MainMenu":"res://Root/MainMenu.tscn","Map_0":"res://Root/Map_0.tscn"}
var CurRoot = "MainMenu"

func _ready():
	SetRoot("MainMenu")

func SetRoot(NewRoot : String):
	CurRoot = NewRoot
	get_tree().change_scene(RootNodes[CurRoot])
