extends Timer

var random_number

func timeout():
	random_number = randi() % 7 + 1 ## 1-2=Fire, 3-4=Ice, 5-6=Elec 7=Bad
	print(random_number)
