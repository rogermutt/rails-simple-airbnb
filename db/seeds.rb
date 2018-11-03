require 'faker'

PRICES = [70,75,80,85,90,95]
GUESTS = [1,2,3,4]

NAMES = [
'Light & Spacious Garden Flat London',
'Cozy and beautiful house Sydney',
'Bohemian pen house in Paris',
'Modern and sophisticated flat in Tokio',
'Urban and contemporary semi-dettached house in New York',
'Traditional Bavarian large house Munich',
'Leafy apartment with great view of city center in Barcelona'
]

puts 'Started seeding'
9.times do
  puts 'One flat'
Flat.create!(
  name: NAMES.sample,
  address: Faker::Address.street_address,
  description: Faker::TwinPeaks.quote,
  price_per_night: PRICES.sample,
  number_of_guests: GUESTS.sample
)
end
puts 'Finished seeding'

