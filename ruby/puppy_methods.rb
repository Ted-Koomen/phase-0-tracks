class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times {puts "Woof!"}
  end

  def roll_over
  	puts "***Rolls Over***"
  end

end

fido = Puppy.new
fido.speak(3)
fido.roll_over
