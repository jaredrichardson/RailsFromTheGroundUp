(1..100).each do |i|
  print "#{i}:"
  if i % 3 == 0
    print "Fizz"
  end
  if i % 5 == 0
    print "Buzz"
  end
  puts "\n"
end