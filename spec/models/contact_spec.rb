require 'rails_helper'

RSpec.describe Contact, type: :model do

  context "associations" do
    it { should have_many(:phone_numbers).dependent(:destroy) }
    it { should have_many(:postal_addresses).dependent(:destroy) }
  end

  context "Nested form associations" do
    it { should accept_nested_attributes_for(:phone_numbers).allow_destroy(true) }
    it { should accept_nested_attributes_for(:postal_addresses).allow_destroy(true) }
  end

  context "validations" do
    subject { Contact.create(name: "Test") }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
