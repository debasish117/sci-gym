class CreateSubscriptionPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :subscription_plans do |t|
      t.integer :client_id
      t.integer :plan_id
      t.timestamps
    end
    add_index :subscription_plans, :client_id
    add_index :subscription_plans, :plan_id
  end
end
