class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'requires a valid email format' }, presence: true
  validates :name, length: { minimum: 4, maximum: 20 }, presence: true
  validates :role, presence: true
  validate :valid_role
  has_secure_password

  private

  def valid_role
    return if role == 'admin' || role == 'poster' || role == 'commenter'

    errors.add(:role, 'is not valid')
  end
end
