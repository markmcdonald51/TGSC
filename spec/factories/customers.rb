FactoryBot.define do
  factory :customer do
    membership_level { nil }
    aasm_state { "MyString" }
    last_pay_date { "2019-05-11" }
       
    trait :random do
      member_since  { rand(10.years).seconds.ago }
      country_of_citizenship { ['KH','US', 'FR'].sample } 
      association :contact, factory: [:person, :random]   
      membership_level { MembershipLevel.all.sample }
      last_pay_date { rand(2.years).seconds.ago }
    end
      
  end
end
