class MembershipLevel < ApplicationRecord
  fileuploads :pictures
  
  include RailsSortable::Model
  set_sortable :position  # Indicate a sort column
  
  has_many :customers
  has_many :pictures, as: :assetable, dependent: :destroy
  
  has_many :membership_accessable_facilities
  has_many :facilities, through: :membership_accessable_facilities
  
  translates :name, :description
  
  DURATIONS = [:daily, :monthly, :bimonthly, :yearly]
     
end






