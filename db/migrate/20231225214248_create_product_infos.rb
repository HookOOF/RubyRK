class CreateProductInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :product_infos do |t|
      t.date :date
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
