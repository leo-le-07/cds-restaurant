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

section_breakfast.items.create(name: "Bánh mì", desc: Faker::Lorem.sentence, price: 10000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh bao", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh cuốn", desc: Faker::Lorem.sentence, price: 17000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Xôi gà", desc: Faker::Lorem.sentence, price: 19000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh ướt", desc: Faker::Lorem.sentence, price: 20000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh ướt Ban Mê", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_lunch.items.create(name: "Cơm tấm", desc: Faker::Lorem.sentence, price: 35000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Bún bò", desc: Faker::Lorem.sentence, price: 55000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Bún giò", desc: Faker::Lorem.sentence, price: 27000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm thịt", desc: Faker::Lorem.sentence, price: 39000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm sườn", desc: Faker::Lorem.sentence, price: 25000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm chiên cá mặn", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_dinner.items.create(name: "Phở tái", desc: Faker::Lorem.sentence, price: 45000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phạm nạm", desc: Faker::Lorem.sentence, price: 50000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở tái bò viên", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở gân", desc: Faker::Lorem.sentence, price: 29000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở bò", desc: Faker::Lorem.sentence, price: 35000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở 2 trứng", desc: Faker::Lorem.sentence, price: 34000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_drinks.items.create(name: "Sữa bắp Thái sơn", desc: Faker::Lorem.sentence, price: 12000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Bò húc", desc: Faker::Lorem.sentence, price: 10000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Trà xanh", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Hạt é", desc: Faker::Lorem.sentence, price: 12000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Sinh tố ớt", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Sinh tố ổi", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

Discount.create(code: 'CODERSCHOOL', percent: 50)
