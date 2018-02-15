class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :meta_title
      t.string :meta_description
      t.string :permalink
      t.boolean :no_index

      t.timestamps
    end
  end
end
