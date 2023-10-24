require './config.rb'
require './integer_to_roman.rb'
require './roman_to_integer.rb'

def run
  print "Enter a roman or integer number: "
  input = gets.chomp

  if input.match?(INTEGER_REGEX)
    integer_value = input.to_i
    is_valid_integer = integer_value >= MIN_NUMBER && integer_value < MAX_NUMBER

    puts !is_valid_integer ?
           "Invalid integer number: (1 <= n < 4000)!" :
           "Roman number: #{integer_to_roman(integer_value)}"

  elsif input.match?(ROMAN_REGEX)
    roman_value = input.upcase
    integer_result = roman_to_integer(roman_value)

    puts !integer_result ?
           "Invalid roman number!" :
           "Integer: #{integer_result}"

  else
    puts "Invalid input!"
  end
end

run