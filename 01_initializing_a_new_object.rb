class GoodDog
  # getter and setter functions can be refactored into this
  attr_accessor :name, :height, :weight
  
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  # # getter function
  attr_reader :name
  # def name
  #   @name
  # end

  # # setter function
  attr_writer :name
  # def name=(n)
  #   @name = n
  #   "johnny" #trying to return something other than the value passed as an argument will always get ignored
  # end

  def speak 
    # "#{@name} says Arf!"
    "{name} says Arf!" #better practice to call the getter method instead of the instance variable
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def call_info
    self.info
  end

  #creating class method, method that can be called on the class itself, without needing to instantiate any objects
  
  def self.what_am_i
    "I'm a GoodDog class!"
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')

puts sparky.info

sparky.change_info('Sparkboi', '24 inches', '45 lbs')

puts sparky.info

puts sparky.call_info


puts GoodDog.what_am_i # class methods are where we put functionality that does not pertain to individual objects