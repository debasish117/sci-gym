class Client < ApplicationRecord
  has_many :subscription_plans
  has_many :plans, through: :subscription_plans
  has_one :contact_info, as: :contactable
  has_one :body_type

  accepts_nested_attributes_for :contact_info, update_only: true

end
