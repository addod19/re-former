class User < ApplicationRecord
  def a_validation_method
    errors.add(:username, "Username must be a least 10 characters long, please correct.")
  end
  validates :username, presence: true, length: { minimum: 10 }
  validates :email, presence: true, length: { minimum: 12 }
  validates :password, presence: true
end
