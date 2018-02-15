class AddSpeedIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :speed_id, :integer
  end
end
