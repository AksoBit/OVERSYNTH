extends Node

var config = ConfigFile.new()
var path = "user://save.cfg"

func _ready():
	if config.load(path) != OK:
		set_value("~NUMBERS~", "HacksKilled", 0 )
		set_value("~NUMBERS~", "RodgersKilled", 0 )
		set_value("~NUMBERS~", "TechnoZensKilled", 0 )
		set_value("~NUMBERS~", "YourselfKilled", 0 )
		set_value("~NUMBERS~", "BestLibScore", 0 )
		config.save(path)
func get_value(section, key):
	return config.get_value(section, key)

func set_value(section, key, value):
	config.set_value(section, key, value)
	config.save(path)
func hey_ive_got_an_update():
	await get_tree().process_frame
	if get_value("~NUMBERS~", "HacksKilled") != null:
		set_value("~NUMBERS~", "HacksKilled", get_value("~NUMBERS~", "HacksKilled"))
	else:
		set_value("~NUMBERS~", "HacksKilled", 0 )
	if get_value("~NUMBERS~", "RodgersKilled") != null:
		set_value("~NUMBERS~", "RodgersKilled", get_value("~NUMBERS~", "RodgersKilled"))
	else:
		set_value("~NUMBERS~", "RodgersKilled", 0 )
	if get_value("~NUMBERS~", "TechnoZensKilled") != null:
		set_value("~NUMBERS~", "TechnoZensKilled", get_value("~NUMBERS~", "TechnoZensKilled"))
	else:
		set_value("~NUMBERS~", "TechnoZensKilled", 0 )
	if get_value("~NUMBERS~", "YourselfKilled") != null:
		set_value("~NUMBERS~", "YourselfKilled", get_value("~NUMBERS~", "YourselfKilled"))
	else:
		set_value("~NUMBERS~", "YourselfKilled", 0 )
	if get_value("~NUMBERS~", "BestLibScore") != null:
		set_value("~NUMBERS~", "BestLibScore", get_value("~NUMBERS~", "BestLibScore"))
	else:
		set_value("~NUMBERS~", "BestLibScore", 0 )
	config.save(path)
