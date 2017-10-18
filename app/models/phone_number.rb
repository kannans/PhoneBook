class PhoneNumber < ApplicationRecord
  belongs_to :contact
  validates :number,
            presence: true,
            uniqueness: true,
            numericality:  true,
            length: { minimum: 10, maximum: 15 }
end
