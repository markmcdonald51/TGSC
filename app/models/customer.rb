class Customer < ApplicationRecord
  belongs_to :membership_level
  has_one :person, as:personable
  
end
