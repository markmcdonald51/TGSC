class MembershipLevel < ApplicationRecord
  has_many :customers
  has_many :pictures, as: :assetable, dependent: :destroy
  fileuploads :pictures
end
