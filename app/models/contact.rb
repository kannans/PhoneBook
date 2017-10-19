class Contact < ApplicationRecord
  has_many :phone_numbers, dependent: :destroy
  has_many :postal_addresses, dependent: :destroy

  accepts_nested_attributes_for :phone_numbers, allow_destroy: true
  accepts_nested_attributes_for :postal_addresses, allow_destroy: true

  validates :name, presence: true, uniqueness: true
end
