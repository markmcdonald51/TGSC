class Room < ApplicationRecord
  has_many :pictures, as: :assetable, dependent: :destroy
  fileuploads :pictures
  
  PURPOSE = {
    h: 'Hotel',
    c: 'Conference',
    k: 'Keroke',
    m: 'Massage',
    r: 'Restaurant',    
  }
  
end
