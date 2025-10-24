class Party < ApplicationRecord
  has_many :characters
  validates :code, presence: true, 
    length: { in: 3..8, message: "can have from 3 to 8 characters" }, 
    format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "only allows letters and numbers" }
end
