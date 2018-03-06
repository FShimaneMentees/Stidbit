class Tidbit < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  
  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 200 }

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
