class Prototype < ApplicationRecord
  belongs_to :user
    has_many :comments
    has_one_attached :image

  # content カラムに関するバリデーションを削除する
  # validates :content, presence: true, unless: :was_attached?
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true # 画像が必須である場合
end
