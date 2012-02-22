class Fruit
  attr_accessor :type, :cost
end

class Basket
  
  @@count = 0
  
  def initialize
    @contents = []
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def list_items
    @contents.each do |fruit|
      puts fruit.type 
    end
  end
end

