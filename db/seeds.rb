# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
Shoe.destroy_all
10.times do
the_shoe = Shoe.create({
  user_id: 1,
  shoe_type: Faker::Dessert.variety,
  moodboard: Faker::Internet.url,
  status: 1,
  votes: 0,
  detail: Faker::TvShows::TheFreshPrinceOfBelAir.quote
})
puts the_shoe
puts "uploaded"
end


# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

