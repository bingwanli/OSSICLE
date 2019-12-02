# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Shoe.destroy_all
10.times do
Shoe.create({shoe_type: Faker::Dessert.variety, moodboard: Faker::Internet.url, status: "1", votes: "0", detail: Faker::TvShows::TheFreshPrinceOfBelAir.quote})
puts "finished shoe"
puts Shoe.create({shoe_type: Faker::Dessert.variety, moodboard: Faker::Internet.url, status: "1", votes: "0", detail: Faker::TvShows::TheFreshPrinceOfBelAir.quote})
end


# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

