class MembershipAccessableFacility < ApplicationRecord
  belongs_to :facility
  belongs_to :membership_level
end
