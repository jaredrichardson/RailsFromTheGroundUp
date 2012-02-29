class Skateboard < ActiveRecord::Base
validates :wheel_color, :presence => true
validates :board_brand, :presence => true
validates :deck_size,   :numericality => true
end
