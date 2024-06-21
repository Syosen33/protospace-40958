class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
  has_one_attached :image

  validates :content, presence: true
end
