require 'rails_helper'

RSpec.describe PostalAddress, type: :model do
  context "associations" do
    it { should belong_to(:contact) }
  end

  context "validations" do
    it { should validate_uniqueness_of(:address) }
    it { should validate_presence_of(:address) }
  end
end
