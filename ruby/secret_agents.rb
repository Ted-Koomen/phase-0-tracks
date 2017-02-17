def encrypt(secret_password)
    index = 0
    while index < secret_password.length
        if secret_password[index] == "z"
            secret_password[index] = "a"
        else
            secret_password[index] = secret_password[index].next
        end
        index += 1
    end
     secret_password
end



def decrypt(secret_password)
    index = 0
    word = ""
    right_number = 0

    while index < secret_password.length
        letter = secret_password[index]
        number = "abcdefghijklmnopqrstuvwxyz".index(letter)
        right_number = number - 1
        solution = "abcdefghijklmnopqrstuvwxyz"[right_number]
        index += 1
        word += solution
    end
 word
end



answer_2 = false

while answer_2 == false
puts "Would you like to decrypt or encrypt password?"

    answer = gets.chomp
    if answer == "encrypt" || "decrypt"
    answer_2 = true
    else
    puts "Invalid input"
    answer_2 = false
    end
        puts "What is the password?"

        password = gets.chomp

        if answer == "encrypt"
        p encrypt(password)
        answer_2 = true
        elsif answer == "decrypt"
        p decrypt(password)
        answer_2 = true
        else
        puts "Invalid input"
        answer_2 = false
    end
end

