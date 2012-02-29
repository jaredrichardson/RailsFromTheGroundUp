class AddImageToSkateboards < ActiveRecord::Migration
  def change
    add_column :skateboards, :image_path, :string
  end
end
