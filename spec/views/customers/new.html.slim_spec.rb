require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :membership_level => nil,
      :aasm_state => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[membership_level_id]"

      assert_select "input[name=?]", "customer[aasm_state]"
    end
  end
end
