class Customer < ApplicationRecord
  belongs_to :membership_level
  has_one :contact, as: :personable, class_name: 'Person'
  
  accepts_nested_attributes_for :contact
  #validates_associated :contact 
  
end
