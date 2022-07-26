extends Node

var RootNodes = {"MainMenu":"res://Root/MainMenu.tscn","Map_0":"res://Root/Map_0.tscn"}
var CurRoot = "MainMenu"


func _ready():
	SetRoot("MainMenu")

func SetRoot(NewRoot : String):
	CurRoot = NewRoot
	get_tree().change_scene(RootNodes[CurRoot])

func StartMap(_MapRes : MapData):
	CurRoot = "MAP"
	var NewMap = PackedScene.new()
	NewMap.pack(Map.new(_MapRes))
	get_tree().change_scene_to(NewMap)
