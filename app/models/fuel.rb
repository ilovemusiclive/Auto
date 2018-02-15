class Fuel < ApplicationRecord

  belongs_to :manufacturer
  has_one :car
  has_one :bike

end
