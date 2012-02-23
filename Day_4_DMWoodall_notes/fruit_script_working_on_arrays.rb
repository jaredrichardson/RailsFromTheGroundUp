class Fruit

  attr_accessor :color_of_fruit, :price_per_piece
  
  @@fruit_count = 0

  def initialized(inventory_description=[])
    @color_of_fruit, @price_per_piece = inventory_description  
    @@Fruit_count += 1
  end
  
  def total_number_items_in_cart
  
  end
  
  #short hand once methods have been written
  def price
    @price_per_piece
  end
  
  def color
    @color_of_fruit
  end
  

  
end
