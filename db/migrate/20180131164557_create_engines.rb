class CreateEngines < ActiveRecord::Migration[5.1]
  def change
    create_table :engines do |t|
      t.string :name
      t.integer :size
      t.decimal :litre
      t.text :description
      t.integer :cylinder
      t.integer :valve
      t.integer :hp
      t.integer :kw
      t.integer :torque
      t.date :production_start
      t.date :production_end
      t.string :country
      t.string :type
      t.integer :mark
      t.string :fuel_system
      t.string :meta_title
      t.string :meta_description
      t.string :permalink
      t.boolean :no_index

      t.timestamps
    end
  end
end
