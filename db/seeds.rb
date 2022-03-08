# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#   name = Faker::Name.name
#   User.create(name: name,
#               email: Faker::Internet.email(name: name),
#               address: Faker::Address.street_address,
#               password: 'senha1234')
# end

# 5.times do
#   patisserie_name = Faker::Restaurant.name
#   patisserie = User.new(name: patisserie_name,
#                         email: Faker::Internet.email(name: patisserie_name),
#                         address: Faker::Address.street_address,
#                         password: 'senha1234')
#   patisserie.save
#   rand(1..10).times do
#     Product.create(name: Faker::Dessert.variety,
#                    description: Faker::Food.description,
#                    price: rand(0.99..99.99).round(2),
#                    estimated_delivery: rand(0..7),
#                    user_id: patisserie.id)
#   end
# end
