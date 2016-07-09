# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' ,  name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)

Section.delete_all

section_breakfast = Section.create(name: 'Breakfast');
section_lunch     = Section.create(name: 'Lunch');
section_dinner    = Section.create(name: 'Dinner');
section_drinks    = Section.create(name: 'Drinks');

10.times do |i|
  item = section_breakfast.items.build( name: Faker::Superhero.name, desc: Faker::Lorem.sentence,
    price: Faker::Number.number(10), view_count: Faker::Number.number(3))
  item.image_url = "http://loremflickr.com/320/240/food"
  item.save
end
10.times do |i|
  item = section_lunch.items.create( name: Faker::Superhero.name, desc: Faker::Lorem.sentence,
    price: Faker::Number.number(10), view_count: Faker::Number.number(3))
  item.image_url = "http://loremflickr.com/320/240/food"
  item.save
end
10.times do |i|
  item = section_dinner.items.create( name: Faker::Superhero.name, desc: Faker::Lorem.sentence,
    price: Faker::Number.number(10), view_count: Faker::Number.number(3))
  item.image_url = "http://loremflickr.com/320/240/food"
  item.save
end
10.times do |i|
  item = section_drinks.items.create( name: Faker::Superhero.name, desc: Faker::Lorem.sentence,
    price: Faker::Number.number(10), view_count: Faker::Number.number(3))
  item.image_url = "http://loremflickr.com/320/240/food"
  item.save
end

Discount.create(code: 'CODERSCHOOL', percent: 50)
