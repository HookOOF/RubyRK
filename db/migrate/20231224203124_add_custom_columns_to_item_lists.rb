class AddCustomColumnsToItemLists < ActiveRecord::Migration[7.1]
  def change
    add_column :item_lists, :custom_columns, :text
  end
end
