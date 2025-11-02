class Character < ApplicationRecord
  # assuming that all characters belong to a party
  belongs_to :party
  validates :name, presence: true, length: { in: 1..50 }
end
