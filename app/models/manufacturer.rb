class Manufacturer < ApplicationRecord

  has_many :cars
  has_many :bikes
  has_many :modells
  has_many :bodies

end
