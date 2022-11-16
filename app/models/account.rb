class Account < ApplicationRecord
  belongs_to :user
  validates :gender, format: { with: /\A((([Mm]|([Ff]em))ale)|([Nn]\/[Aa])){1}\z/, message: "Gender must be Male, Female, or N/A (case insensitive)" }
  validates :age, numericality: { in: 20..100 }
end
