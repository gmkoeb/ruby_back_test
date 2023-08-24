# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

State.create([{name: 'Parana'}, {name: 'Santa Catarina'}, {name: 'Rio Grande do Sul'}])

parana = State.where(name: 'Parana').first

santa_catarina = State.where(name: 'Santa Catarina').first

rio_grande_do_sul = State.where(name: 'Rio Grande do Sul').first

#Create cities in Parana

City.create([{name: 'Curitiba', state: parana}, {name: 'Colombo', state: parana}, {name: 'Ponta Grossa', state: parana}])

#Create cities in Santa Catarina

City.create([{name: 'Joinville', state: santa_catarina}, {name: 'Blumenau', state: santa_catarina}, {name: 'Florianopólis', state: santa_catarina}])

#Create cities in Rio Grande do Sul

City.create([{name: 'Porto Alegre', state: rio_grande_do_sul}, {name: 'Caxias do Sul', state: rio_grande_do_sul}, {name: 'Pelotas', state: rio_grande_do_sul}])


