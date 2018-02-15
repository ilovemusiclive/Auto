class Car < ApplicationRecord

  belongs_to :manufacturer
  belongs_to :modell
  belongs_to :body
  belongs_to :engine
  belongs_to :fuel
  belongs_to :fuel_efficiency
  belongs_to :speed

end
