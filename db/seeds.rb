# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require'faker'

User.destroy_all
JoinTableGossipTag.destroy_all
Gossip.destroy_all
City.destroy_all
Tag.destroy_all
#PrivateMessage.destroy_all
#Like.destroy_all

#crée x5

#les villes
10.times do
    City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code
        
    )
end

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentences(number: 2), email: Faker::Internet.email, age: Faker::Number.number(digits: 2), city_id: City.all.sample.id
        
    )
end


20.times do
    Gossip.create( title:Faker::House.furniture, content:Faker::ChuckNorris.fact, user_id: User.all.sample.id
    
    )
end

10.times do
    Tag.create(title:Faker::House.furniture
    
    )  
end

10.times do
    JoinTableGossipTag.create(tag_id: Tag.all.sample.id,  gossip_id: Gossip.all.sample.id  
    
    )  
end

