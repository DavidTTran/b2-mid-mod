# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mechanic_1 = Mechanic.create({name: "David Tran", years_of_exp: 10})
mechanic_2 = Mechanic.create({name: "Test Buddy", years_of_exp: 5})

park_1 = AmusementPark.create({name: "Hersey Park", admission: 50.00})
ride_1 = park_1.rides.create({name: "Lightning Racer", thrill: 5})
ride_2 = park_1.rides.create({name: "Storm Runner", thrill: 9})
ride_3 = park_1.rides.create({name: "The Greate Bear", thrill: 7})
