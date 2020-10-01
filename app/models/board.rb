class Board < ApplicationRecord
  belongs_to :user

  has_many :board_pins
  has_many :pins, :through => :board_pins
end
