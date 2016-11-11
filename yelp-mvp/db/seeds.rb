# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.delete_all

restaurant = Restaurant.new(name:"Le cachalot", address:"Paris", phone_number:"0708", category:"chinese")
restaurant.save

restaurant2 = Restaurant.new(name:"Le pré", address:"London", phone_number:"0777", category:"italian")
restaurant2.save

Review.delete_all

review = Review.new(content:"Trop bon", rating: 2)
review.restaurant = restaurant2
review.save
