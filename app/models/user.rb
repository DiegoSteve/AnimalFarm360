class User < ApplicationRecord
  has_one :ranch, dependent: :destroy

  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  # Other user-related logic
end
