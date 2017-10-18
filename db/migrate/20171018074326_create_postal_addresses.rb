class CreatePostalAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :postal_addresses do |t|
      t.text :address
      t.belongs_to :contact, foreign_key: true, index: true

      t.timestamps
    end
  end
end
