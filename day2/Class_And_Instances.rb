class Animal
  def speak
    puts "whut?"
  end
end

class Dog < Animal
  def speak
    puts "bow wow"
  end
end

class Cat < Animal
  def speak
    puts "Meow"
  end
end

Mammal = Animal.new
Marty = Dog.new

Mammal.speak
Marty.speak