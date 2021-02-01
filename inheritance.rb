# class Animal 
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   # def speak
#   #   "Hello!"
#   # end
# end


# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(color)
#     super
#     @colro = color
#   end

#   def speak
#     super + "from GoodDog class"
#   end
# end


# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age= age
#   end
# end

# # sparky = GoodDog.new("Sparky")
# # paws = Cat.new

# # puts sparky.speak
# # puts paws.speak

# bruno = GoodDog.new("brown")

# p BadDog.new(2, "bear")


# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal; end

# class Fish < Animal
#   include Swimmable         # mixing in Swimmable module
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable         # mixing in Swimmable module
# end




# sparky = Dog.new
# neemo  = Fish.new
# paws   = Cat.new

# p sparky.swim                 # => I'm swimming!
# p neemo.swim                  # => I'm swimming!
# paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>




# module Walkable
#   def walk
#     "I'm walking."
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end

# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak!"
#   end
# end


# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# puts "---GoodDog method lookup---"
# puts GoodDog.ancestors



# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end

#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end

#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new

# buddy.speak("Arf!")
# kitty.say_name("Mew")

# puts value = Mammal.some_out_of_place_method(4)
# puts value = Mammal::some_out_of_place_method(5)


# class GoodDog

#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(name, age)
#     self.name = name
#     self.age= age
#   end

#   def public_disclosure
#     "#{self.name} in human years is #{human_years}"
#   end

#   private
  
#   def human_years
#     age * DOG_YEARS
#   end

# end

# sparky = GoodDog.new("Sparky", 4)
# # puts sparky.human_years

# puts sparky.public_disclosure

# class Animal
#   def a_public_method
#     "will this work?" + self.a_protected_method
#   end


#   protected

#   def a_protected_method
#     "Yes, I'm protected!"
#   end
# end


# fido = Animal.new
# puts fido.a_public_method

# puts fido.a_protected_method


# class Parent
#   def say_hi
#     p "Hi from parent"
#   end
# end


# puts Parent.superclass

# class Child < Parent
#   def say_hi
#     p "Hi from child"
#   end

#   def send
#     p "send from child..."
#   end

#   def instance_of?
#     p "I am a fake instance"
#   end
# end

# # child = Child.new
# # child.say_hi


# lad = Child.new
# # lad.send :say_hi



# c = Child.new
# c.instance_of? Child      # => true
# c.instance_of? Parent     # => false


# heir = Child.new
# heir.instance_of? Child

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  
  def age
    "Your #{self.model} is #{years_old} years old."
  end
  
  private

  def years_old
    Time.now.year - self.year
  end

end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors


class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

end

puts lumina.age



















