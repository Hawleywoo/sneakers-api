# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'

UserSneaker.destroy_all
User.destroy_all
Sneaker.destroy_all


def get_shoes url

    response = RestClient.get(url)
    sneakers = JSON.parse response

    sneakers['results'].map do |sneaker|
        Sneaker.create(
            brand: sneaker["brand"],
            gender: sneaker['gender'],
            releaseDate: sneaker['releaseDate'],
            colorway: sneaker['colorway'],
            retailPrice: sneaker['retailPrice'],
            title: sneaker['title'],
            year: sneaker['year'],
            imageUrl: sneaker['media']['imageUrl']
        )
    end
end

get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=men&releaseYear=2017")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=men&releaseYear=2018")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=men&releaseYear=2019")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=women&releaseYear=2017")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=women&releaseYear=2018")
get_shoes("https://api.thesneakerdatabase.com/v1/sneakers?limit=100&gender=women&releaseYear=2019")

# andrew = User.create(
#     username: 'Andrew',
#     password: 'something'
# )

# andy = User.create( 
#     username: 'Andy',
#     password: 'something'
# )

# WinLike96 = Sneaker.create(
#     brand: 'Jordan',
#     gender: 'Men',
#     releaseDate: '2017-12-09',
#     colorway: 'Red',
#     retailPrice: 220,
#     title: 'Win like 96',
#     year: 2016,
#     imageUrl: "https://stockx.imgix.net/Air-Jordan-11-Retro-Gym-Red-GS.png?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1538080256",
# )
# turboGreen = Sneaker.create(
#     brand: 'Jordan',
#     gender: 'Men',
#     releaseDate: '2019-02-15',
#     colorway: 'Green',
#     retailPrice: 220,
#     title: 'Jordan 1 Retro High Turbo Green',
#     year: 2019,
#     imageUrl: 'https://stockx.imgix.net/Air-Jordan-1-Retro-High-Turbo-Green-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1549055395',
# )
# concord = Sneaker.create(
#     brand: 'Jordan',
#     gender: 'Men',
#     releaseDate: '2018-12-08',
#     colorway: 'White',
#     retailPrice: 220,
#     title: 'Jordan 11 Retro Concord',
#     year: 2019,
#     imageUrl: 'https://stockx.imgix.net/Air-Jordan-11-Retro-Concord-2018-1.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1566585772'
# )
# gamma = Sneaker.create(
#     brand: 'Jordan',
#     gender: 'Men',
#     releaseDate: '2013-12-21',
#     colorway: 'Black',
#     retailPrice: 185,
#     title: 'Jordan 11 Retro Gamma blue',
#     year: 2013,
#     imageUrl: 'https://stockx.imgix.net/Air-Jordan-11-Retro-Gamma-Blue-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1562619394',
# )
# travisScott6 = Sneaker.create(
#     brand: 'Jordan',
#     gender: 'Men',
#     releaseDate: '2019-10-11',
#     colorway: 'Green',
#     retailPrice: 250,
#     title: 'Jordan 6 Travis Scott',
#     year: 2019,
#     imageUrl: 'https://stockx.imgix.net/Air-Jordan-6-Retro-Travis-Scott-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1570475122'
# )
# # turboGreen = Sneaker.create(
# #     brand: 'Jordan',
# #     gender: 'Men',
# #     releaseDate: '2019-02-15'
# #     colorway: 'Green',
# #     gender: 'Men',
# #     title: 'Jordan 1 Retro High Turbo Green',
# #     year: 2019
# #     imageUrl: 'https://stockx.imgix.net/Air-Jordan-1-Retro-High-Turbo-Green-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1549055395',
# # )
# # turboGreen = Sneaker.create(
# #     brand: 'Jordan',
# #     gender: 'Men',
# #     releaseDate: '2019-02-15'
# #     colorway: 'Green',
# #     gender: 'Men',
# #     title: 'Jordan 1 Retro High Turbo Green',
# #     year: 2019
# #     imageUrl: 'https://stockx.imgix.net/Air-Jordan-1-Retro-High-Turbo-Green-Product.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1549055395',
# # )


# UserSneaker.create(user: andy, sneaker: concord)

