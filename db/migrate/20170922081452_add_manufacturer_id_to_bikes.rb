class AddManufacturerIdToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :manufacturer_id, :integer
  end
end
