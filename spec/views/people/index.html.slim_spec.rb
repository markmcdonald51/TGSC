require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile_phone => "Mobile Phone",
        :full_address => "Full Address",
        :personable => nil,
        :lat => "9.99",
        :lng => "9.99"
      ),
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :mobile_phone => "Mobile Phone",
        :full_address => "Full Address",
        :personable => nil,
        :lat => "9.99",
        :lng => "9.99"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Full Address".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
