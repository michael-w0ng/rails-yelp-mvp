# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+44712345678',
    category:      'Indian'
  },
  {
    name:         'Barrafina',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+44700700672',
    category:      'Spanish'
  },
  {
    name:         'Shiki',
    address:      '51 Circular Quay, Sydney, NSW, 2000',
    phone_number: '+61299887766',
    category:      'Japanese'
  },
  {
    name:         'Cumulus',
    address:      '45 Flinders Ln, Melbourne VIC 3000, Australia',
    phone_number: '+61291122334',
    category:      'Australian'
  },
  {
    name:         'The Fat Duck',
    address:      'High St, Bray SL6 2AQ, UK',
    phone_number: '+4475522334455',
    category:      'British'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

