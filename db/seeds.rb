# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all

Product.create!(title: "programing ruby 1.9", description: "description programing ruby 1.9", image_url: "ruby.jpg", price: 49.95)
Product.create!(title: "programing ruby 2.0", description: "description programing ruby 2.0", image_url: "ruby2.jpg", price: 59.95)
