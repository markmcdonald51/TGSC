FactoryBot.define do
  factory :room_type do
    name { "MyString" }
    meter_length { "9.99" }
    meter_width { "9.99" }
    tag_line { "MyString" }
    description { "MyText" }
    in_service { false }
  end
end
