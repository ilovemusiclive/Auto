class CreateSpeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :speeds do |t|
      t.float :sixty
      t.float :hundered
      t.integer :top

      t.timestamps
    end
  end
end
