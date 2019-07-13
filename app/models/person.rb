class Person < ApplicationRecord
  belongs_to :personable, polymorphic: true
  validates :last_name,  uniqueness: { scope: :first_name, case_sensitive: false, 
    message: 'and First Name of person already exisits'}, on: :create
  
  
  validates_presence_of :first_name, :last_name, :full_address
  
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){ obj.full_address.present? and obj.full_address_changed? }
  
  has_one :picture, as: :assetable, dependent: :destroy
  fileuploads :picture
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
