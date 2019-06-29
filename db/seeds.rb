# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


['Swimming Pool',
"Volleyball Court with Roof",
'Steam / Suana',
'Restaurant',
'Hotel',
'Gym & Fitness',
'Football Pitches',
'Table Pingpong',
'Coffee Shop'].each do |f|
  Facility.create!(name: f, 
    description: Faker::Lorem.paragraph)
end 

[['Full', '60'], 
 ['Football Only', '25'],
 ['Pool/Sauna', '25'],
 ['Condo Rental', '350'],
 ['Hotel', '20']].each do |name, cost| 
    MembershipLevel.create!(
      name: name, 
      usd_cost: cost,
      duration: MembershipLevel::DURATIONS.sample ,
      facilities: Facility.all.sample([1.9].sample),
      description: Faker::Lorem.paragraph )
end

aasm_states = Customer.aasm.states.map(&:name)  
1.upto(100).each do
  c = FactoryBot.build(:customer, :random)    
  #c.save!
  c.aasm_state = aasm_states.sample
  c.save!
end

(a..c).to_a.each_with_index do |floor_number, letter_floor|
  1.upto(8).each |r|
    r = Room.new(purpose: 'p', floor: 
  end
end






