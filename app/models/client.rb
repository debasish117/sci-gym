class Client < ApplicationRecord
  has_many :subscription_plans, dependent: :destroy
  has_many :plans, through: :subscription_plans
  has_one :contact_info, as: :contactable, dependent: :destroy
  has_one :body_type

  accepts_nested_attributes_for :contact_info, update_only: true

  def has_active_subscription?
    subscription_plan&.active?
  end

  def active_subscription
    self.subscription_plans.select { |sub_plan| sub_plan.active? }.first
  end

end
