# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, uniqueness: true, presence: { message: ' must not be blank.' }, length: { minimum: 10 }
  validates :email, uniqueness: true, presence: true, length: { minimum: 12 }
  validates :password, presence: true
end
