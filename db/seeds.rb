# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
#....
Product.create!(title:"Apple Royal Gala", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Product 2", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Product 3", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Product 4", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Product 5", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Product 6", description:"These apples were grown in WA", unit:"KG", image_url: "apple.png", price: 2.99)
Product.create!(title:"Bananas", description:"Perfectly ripened QLD Bananas", unit:"KG", image_url: "banana.png", price: 3.49)
#....

User.delete_all
User.create!(name:"Jamie", password:"zsaxzsax", :password_confirmation"zsazsax")
