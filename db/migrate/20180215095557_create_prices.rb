class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.float :new
      t.float :con_deal
      t.float :con_one
      t.float :con_two
      t.float :con_three
      t.float :con_four

      t.timestamps
    end
  end
end
