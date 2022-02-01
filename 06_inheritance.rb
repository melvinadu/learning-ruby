class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  # attr_accessor :name

  # def initialize(n)
  #   self.name = n
  # end

  # def speak
  #   "#{self.name} says arf!"
  # end

  def speak
    super + " called from GoodDog class using super keyword to pull method from Animal superclass"
  end

end

class Cat < Animal
end

sparky = GoodDog.new

paws = Cat.new

puts paws.speak

puts sparky.speak