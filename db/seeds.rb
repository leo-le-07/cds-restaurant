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

section_breakfast.items.create(name: "Bánh mì", name_unsigned: "banh mi", desc: Faker::Lorem.sentence, price: 10000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh bao", name_unsigned: "banh bao", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh cuốn", name_unsigned: "banh cuon", desc: Faker::Lorem.sentence, price: 17000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Xôi gà", name_unsigned: "xoi ga", desc: Faker::Lorem.sentence, price: 19000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh ướt", name_unsigned: "banh uot", desc: Faker::Lorem.sentence, price: 20000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_breakfast.items.create(name: "Bánh ướt Ban Mê", name_unsigned: "banh uot ban me", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_lunch.items.create(name: "Cơm tấm", name_unsigned: "com tam", desc: Faker::Lorem.sentence, price: 35000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Bún bò", name_unsigned: "bun bo", desc: Faker::Lorem.sentence, price: 55000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Bún giò", name_unsigned: "bun gio", desc: Faker::Lorem.sentence, price: 27000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm thịt", name_unsigned: "com thit", desc: Faker::Lorem.sentence, price: 39000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm sườn", name_unsigned: "com suon", desc: Faker::Lorem.sentence, price: 25000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_lunch.items.create(name: "Cơm chiên cá mặn", name_unsigned: "com chien ca man", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_dinner.items.create(name: "Phở tái", name_unsigned: "pho tai", desc: Faker::Lorem.sentence, price: 45000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở nạm", name_unsigned: "pho nam", desc: Faker::Lorem.sentence, price: 50000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở tái bò viên", name_unsigned: "pho tai bo vien", desc: Faker::Lorem.sentence, price: 30000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở gân", name_unsigned: "pho gan", desc: Faker::Lorem.sentence, price: 29000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở bò", name_unsigned: "pho bo", desc: Faker::Lorem.sentence, price: 35000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_dinner.items.create(name: "Phở 2 trứng", name_unsigned: "phai 2 trung", desc: Faker::Lorem.sentence, price: 34000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

section_drinks.items.create(name: "Sữa bắp Thái sơn", name_unsigned: "sua bap thai son", desc: Faker::Lorem.sentence, price: 12000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Nha đam đường phèn", name_unsigned: "nha dam duong phen", desc: Faker::Lorem.sentence, price: 10000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Trà xanh", name_unsigned: "tra xanh", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Hạt é", name_unsigned: "hat e", desc: Faker::Lorem.sentence, price: 12000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Sinh tố ớt", name_unsigned: "sinh to ot", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")
section_drinks.items.create(name: "Sinh tố ổi", name_unsigned: "sinh to oi", desc: Faker::Lorem.sentence, price: 15000, view_count: 0, image_url: "http://loremflickr.com/320/240/")

Discount.create(code: 'CODERSCHOOL', percent: 50)
