class AddPriceIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :price_id, :integer
  end
end
