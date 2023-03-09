require_relative "../class_lasagna"

puts "How long has the lasagna been cooking"
cook_time = gets.chomp.to_i
result = Basic::Lasagna.new.remaining_minutes_in_oven(cook_time)
puts result