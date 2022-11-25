# require 'faker'

# Experience.destroy_all
# puts "destroyed experiences"
# User.destroy_all
# puts "destroyed user"
# Booking.destroy_all
# puts "destroyed bookings"

# User.create!(email: "test@test.com",
#             password: "123456",
#             first_name: "Jane/Joe",
#             last_name: "Smith",
#             nickname: "engineer")


# 5.times do
#   new_user = User.create!(password: "password",
#                           email: Faker::Internet.email,
#                           first_name: Faker::Name.first_name,
#                           last_name: Faker::Name.last_name,
#                           nickname: Faker::JapaneseMedia::SwordArtOnline.game_name)

#    puts "#{new_user.id} was created"

#   8.times do
#     new_experience = Experience.create!(title: Faker::FunnyName.three_word_name,
#                                       description: Faker::Quote.most_interesting_man_in_the_world,
#                                       city: Faker::Address.city,
#                                       price: [50, 100, 200, 300, 400].sample,
#                                       duration: ["2 hours", "4 hours", "6 hours"].sample,
#                                       category: ["Childrens Magic", "Sleight of Hand", "Animal Magic", "Comedy Magic", "Illusionist", "Escapologist", "Mentalist"].sample,
#                                       user: new_user
#                                       )
#     puts "#{new_experience.id} was sucessfully created!"

#     3.times do
#       new_booking = Booking.create!(date: Faker::Date.forward(days: 23),
#                                     status: Booking::STATUS.sample,
#                                     customer: new_user,
#                                     magician: new_user,
#                                     experience: new_experience)

#       puts "#{new_booking.id} was created"
#     end
#   end
# end








#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "adding users"
#
# User.create!(email: "criss@gmail.com", password: "123456")
# User.create!(email: "amy@yahoo.com", password: "123456")

# puts "users added"

# puts "cleaning the database"

# Experience.create!(title: "Criss Angel", description: "For more than two decades, Criss Angel has dominated the world of
#   magic as the biggest name on the planet. From his role as star, creator, executive producer, and director of the most
#   successful magic television series of all time, Criss Angel MINDFREAK on A&E Network, to his #1 best-selling Las Vegas
#   stage show Criss Angel MINDFREAK, smash Broadway and tour runs of RAW, to countless critically acclaimed television
#   specials and series, best-selling books, top-grossing retail products, music CDs and more,
#   Angel is the most influential and imitated magician of the modern era. Hailing spectacular reviews from outlets such
#   as Bloomberg Businessweek - who called him “the biggest name in Las Vegas magic” -
#   Angel brings “an estimated $150 million a year into the local economy”
#   (Newsweek) and generates a whopping “$70 million a year” personally (Businessweek), proving time and again that he is
#   the most successful magician ever.",
#   city: "Las Vegas", price: "300", duration: "3 hours", category: "illusionist", user_id: 1)

# Experience.create!(title: "Penn & Teller", description: "an edgy mix of magic and comedy that blends guns, knives,
#   gorillas and fire.
#   Penn & Teller material varies from light-hearted gags such as graphic tricks and clever pranks to tackling issues
#   through political satire and by exposing frauds.
#   From humble beginnings busking on the streets of Philadelphia to acclaimed sold-out runs on Broadway to the longest
#   running and one of the most-beloved resident headline acts in Las Vegas history,
#   magic's legendary duo continues defy labels—and at times physics and good taste —
#   by redefining the genre of magic and inventing their own very distinct niche in comedy.",
#   city: "Berlin", price: "200", duration: "2 hours", category: "Comedy", user_id: 2)

# Experience.create!(title: "Harry Houdini", description: "Performs some of the world famous escape routines, renowned for
#   being able to escape from any set of handcuffs. He first attracted notice in vaudeville in the United States and then
#   as Harry 'Handcuff' Houdini
#   on a tour of Europe, where he challenged police forces to keep him locked up. Soon he extended his repertoire to
#   include chains, ropes slung from skyscrapers, straitjackets under water, and having to escape from and hold his breath
#   inside a sealed milk can with water in it.. Open to any kind of party or gathering.",
#   city: "Budapest", price: "600", duration: "1 hour", category: "Escape Artist", user_id: 3)




# puts "Added three magacians"
