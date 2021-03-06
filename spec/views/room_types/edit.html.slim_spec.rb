require 'rails_helper'

RSpec.describe "room_types/edit", type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
      :name => "MyString",
      :meter_length => "9.99",
      :meter_width => "9.99",
      :tag_line => "MyString",
      :description => "MyText",
      :in_service => false
    ))
  end

  it "renders the edit room_type form" do
    render

    assert_select "form[action=?][method=?]", room_type_path(@room_type), "post" do

      assert_select "input[name=?]", "room_type[name]"

      assert_select "input[name=?]", "room_type[meter_length]"

      assert_select "input[name=?]", "room_type[meter_width]"

      assert_select "input[name=?]", "room_type[tag_line]"

      assert_select "textarea[name=?]", "room_type[description]"

      assert_select "input[name=?]", "room_type[in_service]"
    end
  end
end
