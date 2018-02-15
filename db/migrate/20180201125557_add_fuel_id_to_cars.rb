class AddFuelIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :fuel_id, :integer
  end
end
