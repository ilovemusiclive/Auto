class AddManufacturerIdToModells < ActiveRecord::Migration[5.1]
  def change
    add_column :modells, :manufacturer_id, :integer
  end
end
