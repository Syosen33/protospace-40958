class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :user_id, presence: true
end
