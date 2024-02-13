class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :prototypes
         has_many :comments, dependent: :destroy

end


class User < ApplicationRecord
  # Deviseの設定がここに来ます（例: devise :database_authenticatable, ...）

  # バリデーションの追加
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
end
