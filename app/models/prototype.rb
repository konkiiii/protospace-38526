class Prototype < ApplicationRecord
  validates :text, presence:true
  validates :string, presence:true
  validates :image, presence:true
  # 念の為、空欄時に保存できないバリデーション設定→いらない場合は削除可
  belomgs_to :user
  # has_many :comments
  # ※commentsのアソシエーション作成時にコメントアウト外す
  has_one_attached :image
end
