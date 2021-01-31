module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors




# To extend the funtionality
module Swimmable
end

class Person
  include Swimmable
end

first_person = Person.new


# Namespacing
module Career
  class Teacher
  end
  class Engineer
  end
end

first_job = Career::Teacher.new