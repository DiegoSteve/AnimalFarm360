class Animal < ApplicationRecord
  belongs_to :corral
  belongs_to :ranch
end
