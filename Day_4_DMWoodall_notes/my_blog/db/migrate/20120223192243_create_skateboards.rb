class CreateSkateboards < ActiveRecord::Migration
  def change
    create_table :skateboards do |t|
      t.string :wheel_color
      t.integer :deck_size
      t.string :board_brand

      t.timestamps
    end
  end
end
