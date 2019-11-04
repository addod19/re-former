# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: { message: ' must not be blank.' }, length: { minimum: 10 }
  validates :email, presence: true, length: { minimum: 12 }
  validates :password, presence: true
end
