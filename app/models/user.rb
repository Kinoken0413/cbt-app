class User < ApplicationRecord
  # Deviseを使用してユーザーモデルを構成
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # バリデーション: ユーザー名が存在し、最大10文字以内であること
  validates :name, presence: true, length: { maximum: 10 }

  # バリデーション: パスワードの複雑さをチェックするカスタムバリデーション
  validate :password_complexity

  # 関連付け: ユーザーは複数のワークを持つ
  has_many :works

  private

  # パスワードの複雑さをチェックするメソッド
  def password_complexity
    return if password.blank?

    unless password.match(/\A(?=.*[a-z])(?=.*\d)[a-z\d]{6,}\z/)
      errors.add(:password, 'is invalid. Include both letters and numbers')
    end
  end
end