class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  puts self
end

# class MyAwesomeClass
#   def self.this_is_a_class_method
#      puts self
#   end
# end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')

p sparky.what_is_self # From within the class, when an instance method uses self, it references the calling object. In this case, that's the sparky object. Therefore, from within the change_info method, calling self.name= acts the same as calling sparky.name= from outside the class. 

#That is, def self.a_method is equivalent to def GoodDog.a_method

