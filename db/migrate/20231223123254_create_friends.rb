class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.string :branch_name
      t.string :manager
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
