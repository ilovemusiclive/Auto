class CreateFuelEfficiencies < ActiveRecord::Migration[5.1]
  def change
    create_table :fuel_efficiencies do |t|
      t.integer :mpg
      t.integer :kml
      t.string :meta_title
      t.string :meta_description
      t.string :permalink
      t.boolean :no_index

      t.timestamps
    end
  end
end
