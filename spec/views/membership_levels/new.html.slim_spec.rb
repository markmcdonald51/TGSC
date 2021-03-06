require 'rails_helper'

RSpec.describe "membership_levels/new", type: :view do
  before(:each) do
    assign(:membership_level, MembershipLevel.new(
      :name => "MyString",
      :position => "MyString",
      :description => "MyText",
      :duration => "MyString",
      :usd_cost => "9.99"
    ))
  end

  it "renders new membership_level form" do
    render

    assert_select "form[action=?][method=?]", membership_levels_path, "post" do

      assert_select "input[name=?]", "membership_level[name]"

      assert_select "input[name=?]", "membership_level[position]"

      assert_select "textarea[name=?]", "membership_level[description]"

      assert_select "input[name=?]", "membership_level[duration]"

      assert_select "input[name=?]", "membership_level[usd_cost]"
    end
  end
end
