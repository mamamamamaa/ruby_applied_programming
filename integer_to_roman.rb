require './config.rb'

def integer_to_roman(integer)
  result = ""

  ROMAN_NUMERALS.each do |roman, value|
    while integer >= value
      integer -= value
      result += roman
    end
  end

  result
end