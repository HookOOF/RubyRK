class CreateItemLists < ActiveRecord::Migration[7.1]
  def change
    create_table :item_lists do |t|
      t.string :prod_name
      t.integer :mg
      t.integer :price

      t.timestamps
    end
  end
end
