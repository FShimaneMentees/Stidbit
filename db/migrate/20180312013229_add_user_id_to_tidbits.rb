class AddUserIdToTidbits < ActiveRecord::Migration[5.1]
  def change
    add_column :tidbits, :user_id, :int
  end
end
