class AddFuelEfficiencyIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :fuel_efficiency_id, :integer
  end
end
