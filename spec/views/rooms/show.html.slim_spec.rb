require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Purpose/)
    expect(rendered).to match(/Floor/)
    expect(rendered).to match(/Room Number/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
  end
end
