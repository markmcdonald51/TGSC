require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :mobile_phone => "MyString",
      :full_address => "MyString",
      :personable => nil,
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input[name=?]", "person[first_name]"

      assert_select "input[name=?]", "person[last_name]"

      assert_select "input[name=?]", "person[email]"

      assert_select "input[name=?]", "person[mobile_phone]"

      assert_select "input[name=?]", "person[full_address]"

      assert_select "input[name=?]", "person[personable_id]"

      assert_select "input[name=?]", "person[lat]"

      assert_select "input[name=?]", "person[lng]"
    end
  end
end
