module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year
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
    puts "You push the gas and accelerate #{number} km/h."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} km/h."
  end

  def current_speed
    puts "You are now going #{current_speed} km/h."
  end

  def shut_down
    @current_speed =0
    puts "Lets park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def age
    "Your #{self.model} is#{years_old} years old."
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


class MyCar
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end

end


class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

civic = MyCar.new(2018, 'civic tiger', 'black')
civic.speed_up(50)
civic.current_speed
civic.brake(10)
civic.current_speed
civic.shut_down
civic.color = "red"
puts civic.color
puts civic.year
civic.spray_paint('yellow')
MyCar.gas_mileage(13/351)
my_car = MyCar.new("2022", "Ford Focus", "black")
puts my_car
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
puts civic.age

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)