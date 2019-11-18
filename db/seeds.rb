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

CLOTHING = ['shirts', 'pants', 'shorts', 'hats', 'shoes', 'socks', 'underwear', 'jackets']
PICTURES = [ 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
             'https://images.unsplash.com/photo-1479064555552-3ef4979f8908?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
             'https://images.unsplash.com/photo-1505022610485-0249ba5b3675?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
             'https://images.unsplash.com/photo-1546102597-4ac3be10560e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=626&q=80',
             'https://images.unsplash.com/photo-1556048219-bb6978360b84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80'
            ]

ClothingItem.destroy_all

100.times do
  ClothingItem.create(category: CLOTHING.sample,
                    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum id eos dolore impedit',
                    picture: PICTURES.sample,
                    name: Faker::Hipster.word,
                    price: rand(150)
                    )
end
