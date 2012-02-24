class Skateboard < ActiveRecord::Base

  validates :wheel_color, :presence => true
  validates :style, :presence => true
  validates :size, :numericality => true
end
