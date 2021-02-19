# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'deleting cocktails and doses'
Cocktail.destroy_all

puts 'deleting ingredients'
Ingredient.destroy_all

puts 'seeding ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
JSON.parse(open(url).read)['drinks'].each do |ing|
  Ingredient.create!(name: ing['strIngredient1'])
end

puts 'seeding cocktails'
white_russian = Cocktail.new(name: 'White Russian')
wr_img = URI.open('https://focusmicrosites.s3.amazonaws.com/assets/uploads/post_marquee_5f19f76b2870d.jpg')
white_russian.photo.attach(io: wr_img, filename: 'white_russian.jpg', content_type: 'image/png')
white_russian.save

martini = Cocktail.new(name: 'Martini')
martini_img = URI.open('https://i.pinimg.com/originals/ee/65/7f/ee657f437fac97abfed5784e1fb19b27.jpg')
martini.photo.attach(io: martini_img, filename: 'martini.jpg', content_type: 'image/png')
martini.save

pint = Cocktail.new(name: 'Pint')
pint_img = URI.open('https://i2-prod.dailyrecord.co.uk/incoming/article6689127.ece/ALTERNATES/s1200/unnamed.jpg')
pint.photo.attach(io: pint_img, filename: 'pint.jpg', content_type: 'image/png')
pint.save

french_75 = Cocktail.new(name: 'French 75')
french_75_img = URI.open('https://i0.wp.com/boingboing.net/wp-content/uploads/2019/01/Casablanca-review.jpg?fit=792%2C456&ssl=1')
french_75.photo.attach(io: french_75_img, filename: 'french_75.jpg', content_type: 'image/png')
french_75.save

champagne_cocktail = Cocktail.new(name: 'Champagne Cocktail')
champagne_cocktail_img = URI.open('http://lucyvhayauthor.com/wp-content/uploads/2017/01/Leonardo-DiCaprio-The-Great-Gatsby-Movie-Wallpapers.jpg')
champagne_cocktail.photo.attach(io: champagne_cocktail_img, filename: 'champagne_cocktail.jpg', content_type: 'image/png')
champagne_cocktail.save

suntory = Cocktail.new(name: 'Suntory Whiskey')
suntory_img = URI.open('https://i.insider.com/520532a069beddc374000011?width=700&format=jpeg&auto=webp')
suntory.photo.attach(io: suntory_img, filename: 'suntory.jpg', content_type: 'image/png')
suntory.save
