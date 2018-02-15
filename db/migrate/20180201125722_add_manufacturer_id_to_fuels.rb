class AddManufacturerIdToFuels < ActiveRecord::Migration[5.1]
  def change
    add_column :fuels, :manufacturer_id, :integer
  end
end
