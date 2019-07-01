require 'rails_helper'

RSpec.describe "room_types/index", type: :view do
  before(:each) do
    assign(:room_types, [
      RoomType.create!(
        :name => "Name",
        :meter_length => "9.99",
        :meter_width => "9.99",
        :tag_line => "Tag Line",
        :description => "MyText",
        :in_service => false
      ),
      RoomType.create!(
        :name => "Name",
        :meter_length => "9.99",
        :meter_width => "9.99",
        :tag_line => "Tag Line",
        :description => "MyText",
        :in_service => false
      )
    ])
  end

  it "renders a list of room_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Tag Line".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
