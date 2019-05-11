require "rails_helper"

RSpec.describe MembershipLevelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/membership_levels").to route_to("membership_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/membership_levels/new").to route_to("membership_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/membership_levels/1").to route_to("membership_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/membership_levels/1/edit").to route_to("membership_levels#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/membership_levels").to route_to("membership_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/membership_levels/1").to route_to("membership_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/membership_levels/1").to route_to("membership_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/membership_levels/1").to route_to("membership_levels#destroy", :id => "1")
    end
  end
end
