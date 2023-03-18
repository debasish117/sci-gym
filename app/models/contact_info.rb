class ContactInfo < ApplicationRecord
  delegated_type :contactable, types: %w[ Client ]
end
