class User < ApplicationRecord
  has_secure_password
  has_many :comments, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :email, presence: true, uniqueness: true
end
