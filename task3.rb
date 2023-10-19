# в мене були якісь приколи із вводом массиву у консоль,
# та роботяги зі стеку сказали цю штуку втулити, ніби працює
# ось така помилка була "invalid byte sequence in UTF-8 (ArgumentError)"
Encoding.default_external = Encoding::BINARY
Encoding.default_internal = Encoding::BINARY

TYPES_OF_SORTING = %w[asc desc]

def run
  print "Enter numbers separated by spaces: "
  input_numbers = gets.chomp.strip.split.map(&:to_i)

  print "\nEnter type of sorting (asc/desc): "
  type = gets.chomp.strip.downcase

  unless check_type_of_sorting(type)
    puts 'INVALID TYPE OF SORTING!'
    return
  end

  sorted_numbers = sort_numbers(input_numbers, type)

  print "Sorted numbers by #{type}: #{sorted_numbers}"
end

def sort_numbers(array, by = 'asc')
  array.sort_by { |n| by == 'asc' ? n : -n }
end

def check_type_of_sorting(type)
  TYPES_OF_SORTING.include?(type)
end

run