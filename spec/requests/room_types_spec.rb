require 'rails_helper'

RSpec.describe "RoomTypes", type: :request do
  describe "GET /room_types" do
    it "works! (now write some real specs)" do
      get room_types_path
      expect(response).to have_http_status(200)
    end
  end
end
