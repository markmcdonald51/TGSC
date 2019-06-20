class Customer < ApplicationRecord
  belongs_to :membership_level
  has_one :contact, as: :personable, class_name: 'Person'  
  accepts_nested_attributes_for :contact


  include AASM
  aasm do
    state :prospective, initial: true
    state :active
    state :arrears #, :cleaning
    state :suspended
    state :banned

    event :activate_membership do
      transitions from: :prospective, to: :active
    end

    event :suspend do
      transitions from: :active, to: :suspended
    end

    event :ban do
      transitions from: [:suspended, :active, :arrears, :prospective], to: :banned
    end
  end
  
  def to_param
    "#{id}-#{contact.first_name}-#{contact.last_name}"
  end


  
end
