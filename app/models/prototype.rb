class Prototype < ApplicationRecord
  # ユーザーとのアソシエーション
  belongs_to :user

  has_many :comments, dependent: :destroy

  # ActiveStorageを用いた画像のアタッチメント
  has_one_attached :image

  # バリデーション
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true

  # ActiveStorageで画像が存在することを確認するバリデーション
  validates :image, presence: true
end