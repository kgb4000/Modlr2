class AddUserIdToCasts < ActiveRecord::Migration
  def change
    add_column :casts, :user_id, :integer
    add_index :casts, :user_id
  end
end
