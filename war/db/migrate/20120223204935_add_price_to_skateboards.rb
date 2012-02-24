class AddPriceToSkateboards < ActiveRecord::Migration
  def change
    add_column :skateboards, :price, :float

  end
end
