class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 10 }
  validate :password_complexity

  has_many :works
  
  private

  def password_complexity
    return if password.blank?

    unless password.match(/\A(?=.*[a-z])(?=.*\d)[a-z\d]{6,}\z/)
      errors.add(:password, 'is invalid. Include both letters and numbers')
    end
  end

end
