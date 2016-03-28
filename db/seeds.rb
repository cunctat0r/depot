# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create!(title: 'Espresso', 
  description: %{Coffee brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. Espresso is generally thicker than coffee brewed by other methods, has a higher concentration of suspended and dissolved solids, and has crema on top (a foam with a creamy consistency).}, 
  image_url: 'https://goo.gl/c73hTL',
  price: 25.00)

Product.create!(title: 'Mocha', 
  description: %{Like a caffè latte, caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup. Mochas can contain dark or milk chocolate.}, 
  image_url: 'http://goo.gl/4MIIwa',
  price: 25.00)

Product.create!(title: 'Latte', 
  description: %{Coffee drink made with espresso and steamed milk.}, 
  image_url: 'https://goo.gl/ur20RG',
  price: 25.00)