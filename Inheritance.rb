class ParentClass
  def method1
    puts "Hello from method1 in parent class"
  end

  def method2
    puts "Hello from method2 in parent class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in child class"
  end
end

my_object = ChildClass.new
my_object.method1  # Inherited from ParentClass and not overridden in ChildClass
my_object.method2  # Overridden in ChildClass
