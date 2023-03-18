class CreateContactInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_infos do |t|
      t.text :address_field_1
      t.text :address_field_2
      t.string :contact_number
      t.string :zip_code
      t.string :country
      t.string :state
      t.string :district
      t.string :locality
      t.integer :contactable_id
      t.string :contactable_type
      t.timestamps
    end
    add_index :contact_infos, [:contactable_type, :contactable_id]
  end
end
