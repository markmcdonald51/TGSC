require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :membership_level => nil,
        :aasm_state => "Aasm State"
      ),
      Customer.create!(
        :membership_level => nil,
        :aasm_state => "Aasm State"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Aasm State".to_s, :count => 2
  end
end
