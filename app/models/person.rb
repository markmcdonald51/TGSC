class Person < ApplicationRecord
  belongs_to :personable, polymorphic: true
  validates_presence_of :first_name, :last_name, :full_address
  geocoded_by :full_address, if: ->(obj){ obj.full_address.present? and obj.full_address_changed? }
  
  has_one :picture, as: :assetable, dependent: :destroy
  fileuploads :picture
end
