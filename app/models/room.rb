class Room < ApplicationRecord
  has_many :pictures, as: :assetable, dependent: :destroy
  fileuploads :pictures
  
  validates_presence_of  :room_type, :max_number_of_guests, :room_price_per_night , :floor 
  validates_uniqueness_of :room_number


  belongs_to :room_type
  
end
