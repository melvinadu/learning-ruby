#This is an example of using a class variable and a class method to keep track of a class level detail that pertains only to the class, and not to individual objects.

class GoodDog
  @@number_of_dogs = 0

  ##this method gets called everytime to create a new instance of this class via the new method
  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs