# each

numbers = [1, 2, 3, 4, 5]
numbers.each { |num| puts num * 2 }


#map

numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map { |num| num * 2 }
puts doubled_numbers
