# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'deleting ingredients'
Ingredient.destroy_all
puts 'deleting cocktails and doses'
Cocktail.destroy_all

puts 'seeding ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
JSON.parse(open(url).read)['drinks'].each do |ing|
  Ingredient.create!(name: ing['strIngredient1'])
end

puts 'seeding cocktails'
Cocktail.create!(name: 'White Russian')
Cocktail.create!(name: 'Old Fashioned')
Cocktail.create!(name: 'Dirty Martini')
Cocktail.create!(name: 'Long Island Ice Tea')
Cocktail.create!(name: 'Pint of')
