class Facility < ApplicationRecord
  include RailsSortable::Model
  set_sortable :position  # Indicate a sort column
  
  has_many :pictures, as: :assetable, dependent: :destroy
  fileuploads :pictures
  
  translates :name, :tagline, :description
  
end
