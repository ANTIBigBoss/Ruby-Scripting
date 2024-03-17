class Vehicle
  def tyreType
    puts "Heavy Car"
  end
end

class Car < Vehicle
  def tyreType
    puts "Small Car"
  end
end

class Truck < Vehicle
  def tyreType
    puts "Big Car"
  end
end

# Polymorphism in action
vehicle = Vehicle.new
vehicle.tyreType

vehicle = Car.new
vehicle.tyreType

vehicle = Truck.new
vehicle.tyreType
