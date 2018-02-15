class AddBodyIdToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :body_id, :integer
  end
end
