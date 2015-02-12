# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: 'Francis', last_name: 'Bautista',
email: 'francis@gmail.com', password: 'password', position: 'Chief-Registrar')

User.create!(first_name: 'Stuart', last_name: 'Samson',
email: 'stuart@gmail.com', password: 'password', position: 'Registrar')

User.create!(first_name: 'Bea', last_name: 'Francisco',
email: 'bea@gmail.com', password: 'password', position: 'Accountant')


30.times { Fabricate(:student) }
5.times { Fabricate(:requirement) }
