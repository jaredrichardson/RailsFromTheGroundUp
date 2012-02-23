def print_arrays(ary1, ary2)
  puts ary1.to_s
  puts ary2.to_s
end
    
even = []
odd = []
(1..100).each do |num|
  if num % 2 == 0
    even << num
  else
    odd << num
  end
end

puts "Original arrays"
print_arrays(even, odd)

puts "Reversed arrays"
even.reverse!
odd.reverse!
print_arrays(odd, even)


