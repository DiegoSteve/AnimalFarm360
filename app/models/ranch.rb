class Ranch < ApplicationRecord
  belongs_to :user
  has_many :corrals, dependent: :destroy
  validates :name, presence: true
  validates :location, presence: true
end
