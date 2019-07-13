FactoryBot.define do
  factory :person do
    first_name { "John" }
    last_name { "Doe" }
    birth_date { "2019-05-10" }
    email { "doe@gmail.com" }
    mobile_phone { "201-212-2211" }
    full_address { "1730 Rhode Island Ave, Washington DC, USA" }
    personable { nil }
    #latitude { "9.99" }
    #longitude { "9.99" }
    
    trait :random do
      first_name { Faker::Name.first_name }
      last_name { Faker::Name.last_name  }
      birth_date { rand(60.years).seconds.ago }
      email { Faker::Internet.email }
      mobile_phone {Faker::PhoneNumber.cell_phone_with_country_code }
      full_address { Faker::Address.full_address }
      # personable { nil }
      gender { ['m', 'f'].sample }
      latitude { Faker::Address.latitude }
      longitude { Faker::Address.longitude }
        
    end
  end
end
