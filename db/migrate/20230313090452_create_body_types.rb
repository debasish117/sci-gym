class CreateBodyTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :body_types do |t|
      t.integer :age
      t.integer :height
      t.float :weight
      t.integer :client_id
      t.timestamps
    end
  end
end
