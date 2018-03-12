class AddLikesCountToTidbits < ActiveRecord::Migration[5.1]
  def change
    add_column :tidbits, :likes_count, :integer, default: 0
  end
end
