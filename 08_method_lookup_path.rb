module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
puts fido.speak #Ruby found the speak method in the Animal class and looked no further.

puts fido.walk #Ruby first looked for the walk instance method in Animal, and not finding it there, kept looking in the next place according to our list, which is the Walkable module. It saw a walk method there, executed it, and stopped looking further.

# puts fido.swim 
# Ruby traversed all the classes and modules in the list, and didn't find a swim method, so it threw an error.

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"