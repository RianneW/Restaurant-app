# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name:'Febo', address: 'Schoolstraat 1', description:'Nice resto when youre drunk', stars: 1)
Restaurant.create(name:'Mac Donalds', address: 'Johan Huizingalaan 763', description:'As a kid it is nice', stars: 2)
Restaurant.create(name:'La Rive', address: 'Rue de Paris 56', description:'lekker', stars: 4)

