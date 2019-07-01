require 'rails_helper'

RSpec.describe "room_types/new", type: :view do
  before(:each) do
    assign(:room_type, RoomType.new(
      :name => "MyString",
      :meter_length => "9.99",
      :meter_width => "9.99",
      :tag_line => "MyString",
      :description => "MyText",
      :in_service => false
    ))
  end

  it "renders new room_type form" do
    render

    assert_select "form[action=?][method=?]", room_types_path, "post" do

      assert_select "input[name=?]", "room_type[name]"

      assert_select "input[name=?]", "room_type[meter_length]"

      assert_select "input[name=?]", "room_type[meter_width]"

      assert_select "input[name=?]", "room_type[tag_line]"

      assert_select "textarea[name=?]", "room_type[description]"

      assert_select "input[name=?]", "room_type[in_service]"
    end
  end
end
