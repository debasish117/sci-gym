class SubscriptionPlan < ApplicationRecord
  belongs_to :client
  belongs_to :plan

  validates_uniqueness_of :client_id, scope: :plan_id, message: 'already has a plan selected.' 

  enum :status, { active: 0, inactive: 1, cancelled: 2, suspended: 3, archived: 4 }

  # def active_subscription
  #   self.subscription_plans.
  # end
end
