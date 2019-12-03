# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
Moodboard.destroy_all
10.times do
the_moodboard = Moodboard.create({
  user_id: 1,
  shoe_type: Faker::Dessert.variety,
  is_finished: false,
  votes: 0,
  detail: Faker::TvShows::TheFreshPrinceOfBelAir.quote
})
puts the_moodboard
puts "uploaded"
end

