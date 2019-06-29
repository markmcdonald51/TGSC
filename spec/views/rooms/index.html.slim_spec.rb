require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :purpose => "Purpose",
        :floor => "Floor",
        :room_number => "Room Number",
        :number_of_windows => 2,
        :air_conditioning => false,
        :cable_tv => false,
        :room_service => false,
        :refrigerator => false,
        :kitchen => false,
        :fan => false,
        :daliy_housekeeping => false,
        :max_number_of_guests => 3
      ),
      Room.create!(
        :purpose => "Purpose",
        :floor => "Floor",
        :room_number => "Room Number",
        :number_of_windows => 2,
        :air_conditioning => false,
        :cable_tv => false,
        :room_service => false,
        :refrigerator => false,
        :kitchen => false,
        :fan => false,
        :daliy_housekeeping => false,
        :max_number_of_guests => 3
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Floor".to_s, :count => 2
    assert_select "tr>td", :text => "Room Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
