require 'rails_helper'

RSpec.describe "room_types/show", type: :view do
  before(:each) do
    @room_type = assign(:room_type, RoomType.create!(
      :name => "Name",
      :meter_length => "9.99",
      :meter_width => "9.99",
      :tag_line => "Tag Line",
      :description => "MyText",
      :in_service => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Tag Line/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
