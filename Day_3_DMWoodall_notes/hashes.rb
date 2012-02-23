rails_From_Ground_Up = Hash.new

rails_From_Ground_Up["Day 1"] = "We learned about the learning environment. Topics included Brew, Git, Github, RVM"
rails_From_Ground_Up["Day 2"] = "Focused on Ruby syntax, including logic, loops, etc."
rails_From_Ground_Up["Day 3"] = "Array's, Hashes, and more!"

rails_From_Ground_Up

student_favorite_colors = Hash.new
student_favorite_colors["Jay"] = "Blue"
student_favorite_colors["Jared"] = "Pink"
student_favorite_colors["Matt"] = "Magenta"
student_favorite_colors["Dave"] = "Black"

# student_favorite_colors.keys
# student_favorite_colors.values

student_favorite_colors.each do |student,color|
puts "#{student} is a big fan of #{color}."
end

fruit_basket = Hash.new
fruit_basket["apple"] =2.50
fruit_basket["pear"] =.70

prices = fruit_basket.values

def total(cost)
  total = 0
  cost.each do |item|
    total = total.to_f + item
  end
  
  return total
end
  
  
  