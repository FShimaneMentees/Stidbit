class Tidbit < ApplicationRecord
  validates :title, {presence: true, length: {maximum: 30}}
  validates :content, {presence: true, length: {maximum: 200}}
end
