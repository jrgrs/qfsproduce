# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
#....
Product.create!(title:"Apple Royal Gala", description:"These apples were grown in WA", unit:"KG", image_url: "apple.jpg", price: 2.99)
Product.create!(title:"Bananas", description:"Perfectly ripened QLD Bananas", unit:"KG", image_url: "banana.jpg", price: 3.49)
#....
