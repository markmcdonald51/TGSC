require 'rails_helper'

RSpec.describe "facilities/new", type: :view do
  before(:each) do
    assign(:facility, Facility.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new facility form" do
    render

    assert_select "form[action=?][method=?]", facilities_path, "post" do

      assert_select "input[name=?]", "facility[name]"

      assert_select "textarea[name=?]", "facility[description]"
    end
  end
end
