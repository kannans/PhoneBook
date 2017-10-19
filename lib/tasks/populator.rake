require 'faker'

namespace :db do
  task populator: :environment do
    Contact.destroy_all
    puts "Populating fake contacts........"
    100.times do
      contact = Contact.create!(name: Faker::Name.name)

      5.times do
        phone  = Faker::Base.numerify('+91(###) ### ####')
        contact.phone_numbers.create!(number: phone)
      end

      5.times do
        contact.postal_addresses.create!(address: Faker::Address.full_address)
      end
    end
    puts "100 fake contacts has been created"
  end
end
