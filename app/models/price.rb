class Price < ApplicationRecord

  has_one :bike
  has_one :car

end
