class Bike < ApplicationRecord

  belongs_to :manufacturer
  belongs_to :body
  belongs_to :modell
  belongs_to :engine
  belongs_to :fuel

end
