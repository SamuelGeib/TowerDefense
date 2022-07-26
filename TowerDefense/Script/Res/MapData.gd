extends Resource
class_name MapData
export(int) var StartingHealth := 100
export(Array,Array) var Waves := [] # data pont might be [str(enemy_type), int(count)]
export(Array,Array,int) var TileData   := [[]] # 2D array of TileIDs
export(Array,Vector2) var PathPoints := [] # list of Vector2
