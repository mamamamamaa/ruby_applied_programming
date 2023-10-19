CHARACTERS = ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a + %w[! @ # $ % & *]

def run
  print "Enter password length: "
  length = gets.chop.to_i

  unless length > 0
    puts 'INVALID LENGTH VALUE!!!'
    return
  end

  password = generate_password(length)

  puts "Result: #{password}"
end

def generate_password (length = 10)
  Array.new(length) { CHARACTERS.sample }.join
end

run