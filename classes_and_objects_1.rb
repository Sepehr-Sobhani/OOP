class GoodDog

  attr_accessor :name, :height, :weight
  
  #constructor method
  def initialize(n, h, w)
    #instance variable
    @name = n
    @height = h
    @weight = w
  end

  #instance method
  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall"
  end


end


# sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# # puts sparky.speak

# # puts sparky.name
# # sparky.name  = "Poppy"
# # puts sparky.name


# puts sparky.info

# sparky.change_info("Spartacus", "24 inches", "45 lbs")

# puts sparky.info


#######################Exercises###########################################


class MyCar
  
  attr_accessor :color, :model, :speed

  attr_reader :year
  
  def initialize (y, m, c)
    @year = y
    @color = c
    @model = m
    @speed = 0
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


lumina = MyCar.new(1997, 'chevy lumina', 'white')

# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.shut_the_car_off
# lumina.current_speed

p lumina.color

lumina.color= "Red"

p lumina.color

p lumina.year

lumina.spray_paint("Black")

