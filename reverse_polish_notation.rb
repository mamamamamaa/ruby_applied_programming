def run
  print "Enter an expression in reverse Polish notation: "
  input = gets.chomp

  output = rpn(input)

  puts "Result: #{output}"
end

def is_number?(token)
  /\A\d+\z/.match?(token)
end

def apply_operator(stack, operators, operator)
  while stack.any? && operators.index(stack.last) >= operators.index(operator)
    output.push(stack.pop)
  end
  stack.push(operator)
end

def rpn(expression)
  operators = "+-*/"
  stack = []
  output = []

  expression.split.each do |token|
    if is_number?(token)
      output.push(token)
    elsif operators.include?(token)
      apply_operator(stack, operators, token)
    elsif token == "("
      stack.push(token)
    elsif token == ")"
      while stack.any? && stack.last != "("
        output.push(stack.pop)
      end
      stack.pop if stack.last == "("
    else
      raise "Invalid expression: #{token}"
    end
  end

  while stack.any?
    output.push(stack.pop)
  end

  output.join(" ")
end

run