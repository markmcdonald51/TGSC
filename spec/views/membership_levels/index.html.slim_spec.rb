require 'rails_helper'

RSpec.describe "membership_levels/index", type: :view do
  before(:each) do
    assign(:membership_levels, [
      MembershipLevel.create!(
        :name => "Name",
        :position => "Position",
        :description => "MyText",
        :duration => "Duration",
        :usd_cost => "9.99"
      ),
      MembershipLevel.create!(
        :name => "Name",
        :position => "Position",
        :description => "MyText",
        :duration => "Duration",
        :usd_cost => "9.99"
      )
    ])
  end

  it "renders a list of membership_levels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
