class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tidbit

  validates :tidbit_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 100 }
end
