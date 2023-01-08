class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototypes
  # has_many :comments 
  # ※commentsのアソシエーション作成時にコメントアウト外す

  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :name,:profile,:occupation,:position, presence: true
end
