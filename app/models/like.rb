class Like < ApplicationRecord
  belongs_to :tidbit, counter_cache: :likes_count
  belongs_to :user

  validates :tidbit_id, presence: true
  validates :user_id, presence: true
end
