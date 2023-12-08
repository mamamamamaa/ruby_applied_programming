# block
def do_something
  puts "Start of method"
  yield if block_given?
  puts "End of method"
end

do_something do
  puts "This is the block"
end

# yield
def perform_operation
  puts "Start of operation"
  yield if block_given?
  puts "End of operation"
end

perform_operation do
  puts "Executing the block"
end

# &block
# def perform_operation(&block)
#   puts "Start of operation"
#   block.call if block_given?
#   puts "End of operation"
# end
#
# perform_operation do
#   puts "Executing the block"
# end
