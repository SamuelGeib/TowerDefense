tool
extends Node2D
class_name Map

var Width  : int = 10
var Height : int = 10
var PathPoints := [Vector2(0,0),Vector2(1,0)]
var Towers  := []
var Enemies := []
var Grid : TileMap = TileMap.new()

func _init(_MapRes : MapData):
	#INITIALIZE CHILDREN
	if Grid == null or get_child_count() == 0:
		#TILE GRID
		Grid.tile_set = Res.Tiles
		Grid.cell_size = Vector2(16,16)
		add_child(Grid)
		Grid.owner = self
		#CAMERA
		var CAMERA = Camera2D.new()
		add_child(CAMERA)
		CAMERA.owner = self
		CAMERA.zoom = Vector2(.2,.2)
		CAMERA.position += (OS.window_size * CAMERA.zoom) / 2.0
		CAMERA.current = true
	#LOAD MAP DATA
	if _MapRes != null:
		LoadMapData(_MapRes)

func _ready():
	pass


func LoadMapData(_MapRes : MapData):
	Width  = _MapRes.TileData.size()
	Height = _MapRes.TileData[0].size()
	
	#TILES
	for X in Width:
		for Y in Height:
			get_child(0).set_cell(X,Y,_MapRes.TileData[X][Y])
	
	#PATHS
	PathPoints = _MapRes.PathPoints
