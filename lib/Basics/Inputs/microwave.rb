require_relative '../class_microwaven'

puts "Type the seconds to hit the food:"
time = gets.chomp.to_i
result = Basics::Microwave.new(time).buttons_display_timer
puts result
