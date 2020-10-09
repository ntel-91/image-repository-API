# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all

user = User.create!(first_name: 'UserAccount', last_name: 'UserLast', username: 'User', password: '1234')
item1 = Item.create!(user_id: user.id, description: 'cool')

item1.image.attach(
    io: File.open('./public/items/download.jpg'),
    filename: 'download.jpg',
    content_type: 'image/jpg'
)

item2 = Item.create!(user_id: user.id, description: 'rad')
item2.image.attach(
    io: File.open('./public/items/download-1.jpg'),
    filename: 'download-1.jpg',
    content_type: 'image/jpg'
)
