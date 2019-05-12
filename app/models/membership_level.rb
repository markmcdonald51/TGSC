class MembershipLevel < ApplicationRecord
  has_many :customers
  has_many :pictures, as: :assetable, dependent: :destroy
  fileuploads :pictures
  
  include RailsSortable::Model
  set_sortable :position  # Indicate a sort column
end
