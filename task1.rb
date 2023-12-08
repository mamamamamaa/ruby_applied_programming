module Decorator
  def operation
    # додатковий код
    super # виклик оригінальної конструктора
  end
end

class ConcreteComponent
  def operation
    # базовий код
  end
end

class DecoratedComponent
  include Decorator
  attr_reader :component

  def initialize(component)
    @component = component
  end

  def operation
    # додатковий код
    component.operation
  end
end

# Використання:
component = DecoratedComponent.new(ConcreteComponent.new)
component.operation
