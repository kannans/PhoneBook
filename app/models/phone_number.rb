class PhoneNumber < ApplicationRecord
  belongs_to :contact
  validates :number,
            presence: true,
            uniqueness: true,
            format: PHONE_REGEX,
            length: { minimum: 10, maximum: 20 }
end
