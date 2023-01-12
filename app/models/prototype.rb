class Prototype < ApplicationRecord
  with_options presence:true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :image
  end
  # 念の為、空欄時に保存できないバリデーション設定→いらない場合は削除可
  belongs_to :user
  has_many :comments, dependent: :destroy
  # ※commentsのアソシエーション作成時にコメントアウト外す
  has_one_attached :image

  
end
