class Ranch < ApplicationRecord
  belongs_to :user

  has_many :animals
  validates :name, presence: true
  validates :location, presence: true
end
