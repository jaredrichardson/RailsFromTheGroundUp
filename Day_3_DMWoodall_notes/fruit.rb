# with the majority of help from Ben Einwechter

class Fruit
  attr_accessor :number_of_fruits, :price_per_piece
  
  def initialize(fruit_genetic_makeup=[])
    @number_of_fruits, @price_per_piece = fruit_genetic_makeup
  end
end

class Apple < Fruit
end

class Pear < Fruit
end

class Basket
  attr_accessor :contents
  
  def initialize(contents=[])
    @contents= contents
  end
    
  def total_price
    total = 0
    contents.each do |fruit|
      total += fruit.price 
    end
    return total
  end
end



















