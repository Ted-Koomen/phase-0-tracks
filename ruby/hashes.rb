Client_Info = {
    full_name: "",
    address: "",
    zip_code: "",
    age: "",
    children: "",
    decor_theme: "",
    has_pets: ""
}
def dataEdit (keychange)
puts "What value do you want to give #{keychange}?"
Client_Info[keychange] = gets.chomp
end
puts "Client's Full Name:"
Client_Info[:full_name] = gets.chomp
puts "Client's address:"
Client_Info[:address] = gets.chomp
puts "Zip Code"
Client_Info[:zip_code] = gets.chomp.to_i
puts "Clients' Age"
Client_Info[:age] = gets.chomp.to_i
puts "Number of Children"
Client_Info[:children] = gets.chomp.to_i
puts "Decor Theme:"
Client_Info[:decore_theme] = gets.chomp 
good_response = false
until good_response
    puts "Has pets (y or n)?"
    response = gets.chomp
    if response == "y"
        good_response = true
        Client_Info[:has_pets] = true
    elsif response == "n"
        good_response = true
        Client_Info[:has_pets] = false
    else
        puts "please answer with 'y' or 'n'."
        good_response = false
    end
end
puts "You have entered the following information:"
p Client_Info

good_response = false
until good_response
    puts "Would you like to make any changes? (y or n)?"
    response = gets.chomp
    if response == "y"
        good_response = true
        puts "Which data set do you want to edit?"
        dataEdit (gets.chomp)
        # METHOD To EDIT HASH
    elsif response == "n"
        good_response = true
    else
        puts "please answer with 'y' or 'n'."
        good_response = false
    end
end
puts "Latest Version:"
p Client_Info
