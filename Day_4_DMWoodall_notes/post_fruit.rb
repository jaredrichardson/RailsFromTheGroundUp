class Fruit
  attr_accessor :quantity, :cost, :color
  
  def initialize
    @quantity, @cost = []
  end
  
  def total
    total = self.cost * self.quantity
   end
   
end