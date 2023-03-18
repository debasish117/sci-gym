class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.timestamps
    end
  end
end
