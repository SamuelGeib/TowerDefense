extends Resource
class_name MapData
onready var StartingHealth := 100
onready var Waves := [] # data pont might be [str(enemy_type), int(count)]
onready var TileData   := [[]] # 2D array of TileIDs
onready var PathPoints := [] # list of Vector2
