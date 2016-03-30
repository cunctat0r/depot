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
  image_url: 'http://f.tqn.com/y/celiacdisease/1/W/l/A/-/-/Coffee-Gregor-Schuster.jpg',
  price: 25.00)

Product.create!(title: 'Mocha', 
  description: %{Like a caffè latte, caffè mocha is based on espresso and hot milk, but with added chocolate, typically in the form of sweet cocoa powder, although many varieties use chocolate syrup. Mochas can contain dark or milk chocolate.}, 
  image_url: 'http://thefrugalgirls.com/wp-content/uploads/2011/09/Coffee-Free-Samples.jpg',
  price: 25.00)

Product.create!(title: 'Latte', 
  description: %{Coffee drink made with espresso and steamed milk.}, 
  image_url: 'http://media.phillyvoice.com/media/images/AP72235449.2e16d0ba.fill-735x490.jpg',
  price: 25.00)