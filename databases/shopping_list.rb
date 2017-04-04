require 'sqlite3'

db = SQLite3::Database.new("shopping_list.db")

create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS groceries (
		id INTEGER PRIMARY KEY,
		food_group VARCHAR(255),
		food_type VARCHAR(255),
		amount INT
	)
SQL

db.execute(create_table)
list = db.execute("SELECT * FROM groceries")

def add_item(db,group,type,quantity)
	db.execute('INSERT INTO groceries (food_group,food_type,amount) VALUES (?,?,?)',[group,type,quantity])
end

def edit_item(db,type,new_quantity)
	db.execute('UPDATE groceries SET amount = (?) WHERE food_type = (?)',[new_quantity,type])
end

def item_delete(db,type)
	db.execute('DELETE FROM groceries where food_type = (?)',[type])
end

def group_delete(db,group)
	db.execute('DELETE FROM groceries where food_group = (?)',[group])
end

def display_database(list)
	list.each do |item|
	puts "You have #{item[3]} #{item[2]}"
	end
end




puts "-----------------------"
exit_loop = false
until exit_loop
	puts "Would you like to add, edit, or delete a item or delete a whole group of items (for that, type delete group)? (type exit to quit/type display to display list)"
	response = gets.chomp
	if response == "exit"
		puts "Thank you!"
		exit_loop = true
	elsif response == "add"
		puts "What is food group of the item you would like to add? (Meat, Dairy, Sea Food, Snacks"
		food_group = gets.chomp
		puts "What is the food type of the item you would like to add? (Steak, Chicken, Salmon, Pringles)"
		type = gets.chomp
		puts "What is the quantity of the item?"
		quantity = gets.to_i
		add_item(db,food_group,type,quantity)
		puts "#{quantity} #{type}'s added"
	elsif response == "edit"
		puts "What is the item you would like to edit?"
		item = gets.chomp
		puts "What is the new quantity of the item?"
		new_quantity = gets.to_i
		edit_item(db,item,new_quantity)
	elsif response == "delete"
		puts "What is the item you would like to delete?"
		delete_item = gets.chomp
		item_delete(db,delete_item)
	elsif response == "delete group"
		puts "Which group would you like to delete"
		delete_group = gets.chomp
		group_delete(db,delete_group)
	elsif response == "display"
		puts "Here is your shopping list!"
		display_database(list)
	end
end
		