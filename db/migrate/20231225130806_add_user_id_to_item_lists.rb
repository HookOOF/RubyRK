class AddUserIdToItemLists < ActiveRecord::Migration[7.1]
  def change
    add_column :item_lists, :user_id, :integer
    add_index :item_lists, :user_id
  end
end
