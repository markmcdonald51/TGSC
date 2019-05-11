FactoryBot.define do
  factory :customer do
    membership_level { nil }
    aasm_state { "MyString" }
    last_pay_date { "2019-05-11" }
  end
end
