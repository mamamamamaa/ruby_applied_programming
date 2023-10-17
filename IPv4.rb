require './config.rb'

def valid_ipv4?(ip)
  parts = ip.split('.')
  return false unless parts.length == 4

  parts.all? do |part|
    is_number = part.match?(NUMBER_REGEX)
    is_canonical = part.length > 1 ? part[0] != UNCONDITIONAL_SYMBOL : true
    is_valid_number = part.to_i.between?(MIN_NUMBER, MAX_NUMBER)

    is_number && is_canonical && is_valid_number
  end
end


puts valid_ipv4?('192.168.0.1')
puts valid_ipv4?('256.256.256.256')
puts valid_ipv4?('0.0.0.0')
puts valid_ipv4?('192.168.01.1')
