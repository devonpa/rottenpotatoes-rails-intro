class AddUsernameToCbcUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :cbc_users, :username, :string
  end
end
