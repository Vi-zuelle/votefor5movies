# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Nomimovie.destroy_all if Rails.env.development?

Nomimovie.create!(title: 'The Godfather', year: '1972')
Nomimovie.create!(title: 'Pulp Fiction', year: '1994')
Nomimovie.create!(title: 'Fight Club', year: '1999')
Nomimovie.create!(title: 'Forrest Gump', year: '1994')
Nomimovie.create!(title: 'Inception', year: '2010')