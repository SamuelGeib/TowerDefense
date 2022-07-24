tool
extends Node2D
class_name Map

export(int) var Width  : int = 10
export(int) var Height : int = 10

export(Array, Vector2) var PathPoints := [Vector2(0,0),Vector2(1,0)]

onready var Towers  := []
onready var Enemies := []

var Grid : TileMap

func _init(_MapRes):
	if Grid == null or get_child_count() == 0:
		Grid = TileMap.new()
		Grid.tile_set = Res.Tiles
		Grid.cell_size = Vector2(16,16)
		add_child(Grid)
		#TEMP
		for x in 10:
			for y in 10:
				Grid.set_cell(x,y,0)

func _ready():
	pass


