# Створення класу динамічно
dynamic_class = Class.new do
  attr_accessor :dynamic_property

  def dynamic_method
    puts "This is a dynamic method."
  end
end

# Створення об'єкта класу
instance = dynamic_class.new
instance.dynamic_property = "Dynamic Value"
puts instance.dynamic_property  # Output: Dynamic Value

instance.dynamic_method  # Output: This is a dynamic method.
