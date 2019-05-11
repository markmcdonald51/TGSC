require 'rails_helper'

RSpec.describe "MembershipLevels", type: :request do
  describe "GET /membership_levels" do
    it "works! (now write some real specs)" do
      get membership_levels_path
      expect(response).to have_http_status(200)
    end
  end
end
