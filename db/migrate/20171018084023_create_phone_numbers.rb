class CreatePhoneNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_numbers do |t|
      t.string :number
      t.belongs_to :contact, foreign_key: true, index: true

      t.timestamps
    end
  end
end
