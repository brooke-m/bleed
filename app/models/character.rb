class Character < ApplicationRecord
  belongs_to :party, optional: true
  validates :name, presence: true, length: { in: 1..50 }
end
