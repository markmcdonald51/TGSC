FactoryBot.define do
  factory :room do
    purpose { "MyString" }
    floor { "MyString" }
    room_number { "MyString" }
    number_of_windows { 1 }
    air_conditioning { false }
    cable_tv { false }
    room_service { false }
    refrigerator { false }
    kitchen { false }
    fan { false }
    daliy_housekeeping { false }
    max_number_of_guests { 1 }
  end
end
