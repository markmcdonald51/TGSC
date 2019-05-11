require 'rails_helper'

RSpec.describe "membership_levels/show", type: :view do
  before(:each) do
    @membership_level = assign(:membership_level, MembershipLevel.create!(
      :name => "Name",
      :position => "Position",
      :description => "MyText",
      :duration => "Duration",
      :usd_cost => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/9.99/)
  end
end
