
#initialize a hash of arrays for clients name, age, number of chuildren, decor theme, and if they have pets (boolean)
client_info = {
	name:[],
	age:[],
	decor_theme:[],
	number_children:[],
	has_pets:[]
}

#enter client name
puts "Please enter client name:"
name = gets.chomp
client_info[:name] = name

#enter client age
puts "Please enter client age:"
age = gets.to_i
client_info[:age] = age

#enter decor theme
puts "Please enter the preferred decor theme:"
theme = gets.chomp
client_info[:decor_theme] = theme

#enter number of children
puts "Please enter the number of children the client has"
children_number = gets.to_i
client_info[:number_children] = children_number

#enter pets, if none enter boolean as false
puts "What kind of pet does the client have (false if none)"
pet = gets.chomp
client_info[:has_pets] = pet

puts client_info

#prompt user to enter a key
puts "Would you like to edit a key?(yes or no)"
edit_key = gets.chomp
if edit_key == 'yes'
	puts "These are the keys you can edit:"
	p client_info.keys
	puts "Which key would you like to edit?"
	key_edit = gets.chomp
	key_edit = key_edit.to_sym
	p client_info[key_edit]
	puts "What would you like the new value to be?"
	new_value = gets.chomp
	client_info[key_edit] = new_value
	puts client_info
else
	puts "Have a good day!"
end
