class CreateSkateboards < ActiveRecord::Migration
  def change
    create_table :skateboards do |t|
      t.string :wheel_color
      t.string :style
      t.integer :size

      t.timestamps
    end
  end
end
