require './config.rb'

def roman_to_integer(roman)
  total = 0
  prev_value = 0

  roman.reverse.each_char do |char|
    value = ROMAN_NUMERALS[char]

    unless value
      puts "Invalid roman symbol: #{char}"
      return
    end

    total += value < prev_value ? -value : value

    prev_value = value
  end

  total
end