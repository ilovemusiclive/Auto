class CreateBodies < ActiveRecord::Migration[5.1]
  def change
    create_table :bodies do |t|
      t.string :name
      t.text :description
      t.integer :date
      t.string :meta_title
      t.string :meta_description
      t.string :permalink
      t.boolean :no_index

      t.timestamps
    end
  end
end
