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
puts 'Database Cleaned'
puts 'Creating seeds'

Vi = User.create!(name: 'Vi', email: 'vi@mail.com', password: 'password')
Mango = User.create!(name: 'CoolMango', email: 'cool@mango.com', password: 'password')

Nomimovie.create!(title: 'The Godfather', year: '1972', user: Vi)
Nomimovie.create!(title: 'Pulp Fiction', year: '1994', user: Vi)
Nomimovie.create!(title: 'Fight Club', year: '1999', user: Vi)
Nomimovie.create!(title: 'Forrest Gump', year: '1994', user: Vi)
Nomimovie.create!(title: 'Inception', year: '2010', user: Vi)
Nomimovie.create!(title: 'Inception', year: '2010', user: Mango)

puts 'Seeds successfully created'