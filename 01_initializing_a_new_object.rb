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
    @name=n
    @height=h
    @weight=w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "10")

puts sparky.speak

fido = GoodDog.new("Fido", "9")

puts fido.speak

puts sparky.name

puts (sparky.name = "Sparkboi")

puts (fido.height = "6")
