#create method that takes in food and quantity
#establish a hash
#pass food and quanttiy into hash
#return hash

def list_create
	food_list = {}
end

def list_add(list,food,	quantity)
	list[food] = quantity
	list
end

#take which list is being used
#take food to be deleted
#return list

def list_delete(list,food)
	list.delete(food)
	list
end

#take list that is being used
#take food to update quantity
#take new quantity
#return list

def update_quantity(list,food,quantity)
	list[food] = quantity
	list
end

#take the list that is needed to print
#iterate over hash to print out each item separately

def list_print(list)
	list.each {|food,quantity| puts "You need #{quantity}  #{food}'s!"}
end

list = list_create
list_add(list,"Lemonade", 2)
list_add(list,"Tomatoes", 3)
list_add(list, "Onions", 1)
list_add(list, "Ice Cream", 4)
list_delete(list,"Lemonade")
p list
update_quantity(list,"Ice Cream",1)
list_print(list)


