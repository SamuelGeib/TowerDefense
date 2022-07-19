extends Node2D

export(Array,Vector2) var Points = []
onready var Time = 0.0

func _process(delta):
	Time += delta
	if Time >= .5:
		SpawnEnemy()
		Time = 0.0

func SpawnEnemy():
	print("Enemy Spawn!")
