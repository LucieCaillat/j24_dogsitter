# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

# 9 villes
 cities_array = [{city_name: "PARIS" , zip_code: "75000"}, {city_name: "TOULOUSE" , zip_code: "31000"}, {city_name: "NICE" , zip_code: "06000"}, {city_name: "NANTES" , zip_code: "44000"}, {city_name: "STRASBOURG" , zip_code: "67000"}, {city_name: "MONPELLIER" , zip_code: "34000"}, {city_name: "BORDEAUX" , zip_code: "33000"}, {city_name: "LILLE" , zip_code: "59000"}, {city_name: "RENNES" , zip_code: "35000"}]

 cities_array.each_with_index do |city_to_save, index|
     City.create(city_to_save)
     puts "#{index} city créées"
 end

 100.times do 
     Dog.create(dog_name: Faker::Games::Pokemon.name , city: City.all[rand(0..8)] )
     puts "waf"
 end

 100.times do 
     Dogsitter.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name , city: City.all[rand(0..8)])
     puts "hello"
 end

100.times do 
    Stroll.create(dogsitter: Dogsitter.all[rand(0..99)], dog: Dog.all[rand(0..99)])
    puts "je me balade"
end
