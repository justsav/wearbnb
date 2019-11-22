# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Clothing Items

# t.string :category, null: false
# t.text :description
# t.string :picture, null: false
# t.string :name, null: false
# t.integer :price, null: false

GENDER = ['mens', 'womens']
BRANDS = ['Hermes', 'Prada', 'Ralph Lauren', 'Armani', 'adidas', 'Under Armour', 'Vans', 'Eddie Bauer', 'Calvin Klein', 'Kate Spade', 'Tommy Hilfiger', 'Converse', 'Brooks Brothers']
CLOTHING = ['shirts', 'pants', 'shorts', 'hats', 'shoes', 'jackets', 'dresses', 'suits']
hats_pics = ['https://images.unsplash.com/photo-1523380744952-b7e00e6e2ffa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1534215754734-18e55d13e346?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1521369909029-2afed882baee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
shirts_pics = ['https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1546102597-4ac3be10560e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1536344709779-cb4b5af30726?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1535639818669-c059d2f038e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
shorts_pics = ['https://images.unsplash.com/photo-1553533877-d0aadb41eb08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1473351528942-b35ae8d43e42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1507763409096-09a27a20c140?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1492707179926-25913e0b5ab3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
jackets_pics = ['https://images.unsplash.com/photo-1505022610485-0249ba5b3675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
               'https://images.unsplash.com/photo-1495105787522-5334e3ffa0ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
               'https://images.unsplash.com/photo-1523769737536-aa9b96705013?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
shoes_pics = ['https://images.unsplash.com/photo-1556048219-bb6978360b84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1529687675219-d87fc84036fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1559743345-60e0907c4853?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1534070534958-2b1aa718aeac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
pants_pics = ['https://images.unsplash.com/photo-1475178626620-a4d074967452?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1562121594-70a275d4b5e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1562751361-ac86e0a245d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
dresses_pics = ['https://images.unsplash.com/photo-1523657139966-6a7564ebca72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
                'https://images.unsplash.com/photo-1546624431-41761337f187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
                'http://images.unsplash.com/photo-1511130558090-00af810c21b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
                'http://images.unsplash.com/photo-1496217590455-aa63a8350eea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']
suits_pics = ['http://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1534369671220-7a1bceeaf2fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1554559531-fac7e81f943d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80',
              'https://images.unsplash.com/photo-1559418068-807707964448?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=600&q=80']

Review.destroy_all
Reservation.destroy_all
ClothingItem.destroy_all

shirts_pics.each do |shirt|
  ClothingItem.create(category: 'shirts',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: shirt,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
pants_pics.each do |pant|
  ClothingItem.create(category: 'pants',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: pant,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
shorts_pics.each do |short|
  ClothingItem.create(category: 'shorts',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: short,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
hats_pics.each do |hat|
  ClothingItem.create(category: 'hats',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: hat,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
shoes_pics.each do |shoe|
  ClothingItem.create(category: 'shoes',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: shoe,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
jackets_pics.each do |jacket|
  ClothingItem.create(category: 'jackets',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: jacket,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
dresses_pics.each do |dress|
  ClothingItem.create(category: 'dresses',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: dress,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
suits_pics.each do |suit|
  ClothingItem.create(category: 'suits',
                      description: Faker::Hipster.sentences(number: 3).join(" "),
                      picture: suit,
                      name: Faker::Hipster.words(number: 2).join(" "),
                      price: rand(150),
                      brand: BRANDS.sample,
                      gender: GENDER.sample
                      )
end
