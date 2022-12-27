class Prototype < ApplicationRecord
  validates :text, presence:true
  # 念の為、空欄時に保存できないバリデーション設定→いらない場合は削除可
  belomgs_to :user
  # has_many :comments
  # ※commentsのアソシエーション作成時にコメントアウト外す
end
