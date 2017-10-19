require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  context "associations" do
    it { should belong_to(:contact) }
  end

  context "validations" do
    it { should validate_presence_of(:number) }
    it { should validate_uniqueness_of(:number) }
    it { should validate_length_of(:number).is_at_least(10) }
    it { should validate_length_of(:number).is_at_most(20) }

    context "phone number validation" do
      it "user can phone number with + extension" do
        contact = create(:contact, name: "with extension")
        phone = build(:phone_number, number: "+911234567890", contact: contact)

        expect(phone.valid?).to eq(true)
        expect(phone.save).to eq(true)
        expect(phone.errors.size).to eq(0)
      end

      it "user can add phone number without + extension" do
        contact = create(:contact, name: "without extension")
        phone = build(:phone_number, number: "1234567890", contact: contact)

        expect(phone.valid?).to eq(true)
        expect(phone.save).to eq(true)
        expect(phone.errors.size).to eq(0)
      end

      it "user should not add phone number with wrong numbers" do
        contact = create(:contact, name: "without extension")
        phone = build(:phone_number, number: "abvlc1234343", contact: contact)

        expect(phone.valid?).to eq(false)
        expect(phone.save).to eq(false)
        expect(phone.errors.size).to eq(1)
      end
    end
  end
end
