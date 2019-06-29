require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :purpose => "MyString",
      :floor => "MyString",
      :room_number => "MyString",
      :number_of_windows => 1,
      :air_conditioning => false,
      :cable_tv => false,
      :room_service => false,
      :refrigerator => false,
      :kitchen => false,
      :fan => false,
      :daliy_housekeeping => false,
      :max_number_of_guests => 1
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input[name=?]", "room[purpose]"

      assert_select "input[name=?]", "room[floor]"

      assert_select "input[name=?]", "room[room_number]"

      assert_select "input[name=?]", "room[number_of_windows]"

      assert_select "input[name=?]", "room[air_conditioning]"

      assert_select "input[name=?]", "room[cable_tv]"

      assert_select "input[name=?]", "room[room_service]"

      assert_select "input[name=?]", "room[refrigerator]"

      assert_select "input[name=?]", "room[kitchen]"

      assert_select "input[name=?]", "room[fan]"

      assert_select "input[name=?]", "room[daliy_housekeeping]"

      assert_select "input[name=?]", "room[max_number_of_guests]"
    end
  end
end
