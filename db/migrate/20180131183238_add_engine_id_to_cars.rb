class AddEngineIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :engine_id, :integer
  end
end
