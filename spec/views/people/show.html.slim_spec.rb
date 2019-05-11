require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :mobile_phone => "Mobile Phone",
      :full_address => "Full Address",
      :personable => nil,
      :lat => "9.99",
      :lng => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile Phone/)
    expect(rendered).to match(/Full Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
