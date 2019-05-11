FactoryBot.define do
  factory :person do
    first_name { "MyString" }
    last_name { "MyString" }
    birth_date { "2019-05-10" }
    email { "MyString" }
    mobile_phone { "MyString" }
    full_address { "MyString" }
    personable { nil }
    lat { "9.99" }
    lng { "9.99" }
  end
end
