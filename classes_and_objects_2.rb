# class GoodDog
#   #class variable
#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   #class method
#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs   # => 0

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs   # => 2



# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end

#   def to_s
#     "This dog's name is #{name} and it is #{age} in dog years."
#   end
# end


# sparky = GoodDog.new("Sparky", 4)

# puts sparky.age

# puts sparky

# puts sparky.inspect

# puts "#{sparky}"



# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(n, h, w)
#     self.name   = n
#     self.height = h
#     self.weight = w
#   end

#   def change_info(n, h, w)
#     self.name   = n
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end

#   def what_is_self
#     self
#   end

# end



# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")

# p sparky.what_is_self



class MyCar
  
  attr_accessor :color, :model, :speed

  attr_reader :year
  
  def initialize (y, m, c)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  #class method
  def self.gas_mileage (gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  #override to_s method
  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end

  def speed_up (new_speed)
    self.speed += new_speed
    puts "You push the gas and accelerate #{new_speed} mph."
  end

  def brake (new_speed)
    self.speed -= new_speed
    puts "You push the brake and decelerate #{new_speed} mph."
  end

  def shut_the_car_off
    self.speed= 0
  end

  def current_speed
    puts "You are doing now #{self.speed}"
  end

  def spray_paint(new_color)
    self.color= new_color
    puts "Your new #{new_color} paint job looks great!"
  end



end


my_car = MyCar.new("2010", "Ford Focus", "silver")

MyCar.gas_mileage(13, 351)

puts my_car

