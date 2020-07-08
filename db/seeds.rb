# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserSneaker.destroy_all
User.destroy_all
Sneaker.destroy_all

andrew = User.create(
    username: 'Andrew',
    password_digest: 'something'
)

jordan11 = Sneaker.create(
    brand: 'Jordan',
    colorway: 'Red',
    gender: 'Men',
    title: 'Win like 94',
    year: 2016
)

UserSneaker.create(user: andrew, sneaker: jordan11)
