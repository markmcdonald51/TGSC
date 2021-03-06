FactoryBot.define do
  factory :customer do
    association :membership_level
    last_pay_date { "2019-05-11" } 
    association :contact, factory: [:person]
       
    trait :random do
      member_since  { rand(10.years).seconds.ago }
      country_of_citizenship { ['KH','US', 'FR'].sample } 
      association :contact, factory: [:person, :random]   
      membership_level { MembershipLevel.all.sample }
      last_pay_date { rand(2.years).seconds.ago }
    end
      
  end
end
