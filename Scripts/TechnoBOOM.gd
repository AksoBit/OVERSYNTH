extends RigidBody2D
#Я только что поиграл в одну игру, называется MOTORSLICE и она ТАК ХОРОША!
#Вообще я давно слежу за разработкой, отчасти из-за нее я и начал работать над этой.
#И вот решил глянуть, что там. Это очень кайфово. Конечно, видно что это демка
#Но музыка, звуки в большинстве своем так хорошы! Это такая драм-н-бэйс терапия, и геймплей не хардкорный а... Просто приятный.
#Мне прям очень зашло, всем советую. Хм, может с ними что-нибудь сделать? Конечно, о таком рано думать...
#Но отсылочку на эту игрульку обязательно замучу!

func _ready() -> void:
	$"../RigidBody2D2".linear_velocity += Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))#Применяет случайное ускорение от -1000 до 1000
	$"../RigidBody2D2".apply_torque(randf_range(-100, 100)) #Применяет случайное вращение от -100 до 100
	$"../RigidBody2D".linear_velocity += Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))
	$"../RigidBody2D3".linear_velocity += Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))
	$"../RigidBody2D4".linear_velocity += Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))
	$"../RigidBody2D5".linear_velocity += Vector2(randf_range(-1000, 1000), randf_range(-1000, 1000))
	$"../RigidBody2D".apply_torque(randf_range(-100, 100))
	$"../RigidBody2D3".apply_torque(randf_range(-100, 100))
	$"../RigidBody2D4".apply_torque(randf_range(-100, 100))
	$"../RigidBody2D5".apply_torque(randf_range(-100, 100))
func _process(delta: float) -> void:
	pass
