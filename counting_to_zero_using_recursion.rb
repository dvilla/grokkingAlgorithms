def counting_to_zero_from(number)
  if number == 0
    puts 0
  else
    puts number
    counting_to_zero_from(number-1)
  end
end

p counting_to_zero_from(11)