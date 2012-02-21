(1..100).each do |i|
  if i % 3 == 0 && i % 5 == 0
    puts "Fizzbuzz is for #{i}"
  elsif i % 3 == 0
    puts "Fizz is for #{i}"
  elsif i % 5 == 0
    puts "Buzz is for #{i}"
  end
end