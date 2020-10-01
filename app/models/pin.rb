class Pin < ApplicationRecord
  has_many :board_pins
  has_many :bords, :through => :board_pins
end
