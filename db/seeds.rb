# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Gym.destroy_all
Client.destroy_all
Membership.destroy_all

5.times do 
    Gym.create(name: Faker::Company.name, address: Faker::Address.full_address)
end

15.times do
    Client.create(name: Faker::FunnyName.name, age: Faker::Number.within(range: 14..75))
end


