# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning Database'
Nomimovie.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Movie.destroy_all if Rails.env.development?
puts 'Database Cleaned'
puts 'Creating seeds'

vi = User.create!(name: 'Vi', email: 'vi@mail.com', password: 'password')
cool_mango = User.create!(name: 'CoolMango', email: 'cool@mango.com', password: 'password')

# table movies
god_father = Movie.create!(title: 'The Godfather', year: '1972', image_url: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg")
pulp_fiction = Movie.create!(title: 'Pulp Fiction', year: '1994', image_url: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg")
fight_club = Movie.create!(title: 'Fight Club', year: '1999', image_url: "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg")
forest_gump = Movie.create!(title: 'Forrest Gump', year: '1994', image_url: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg")
inception = Movie.create!(title: 'Inception', year: '2010', image_url: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg")
parasite = Movie.create!(title: 'Parasite', year: '2019', image_url: "https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg")

# table nomimovies
Nomimovie.create!(user: vi, movie: god_father)
Nomimovie.create!(user: vi, movie: pulp_fiction)
Nomimovie.create!(user: vi, movie: fight_club)
Nomimovie.create!(user: vi, movie: forest_gump)
Nomimovie.create!(user: vi, movie: inception)
Nomimovie.create!(user: cool_mango, movie: inception)
Nomimovie.create!(user: cool_mango, movie: god_father)

puts 'Seeds successfully created'