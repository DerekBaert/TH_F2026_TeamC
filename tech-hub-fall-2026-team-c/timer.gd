extends Timer

var random_number

func _physics_process(_delta):
	random_number = randi() % 7 + 1 ## 1-2=Fire, 3-4=Ice, 5-6=Elec 7=Bad
	print(random_number)
