# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

derk = User.create(email: "derk@email.com", encrypted_password: "abcd1234")

Ubuntu = Event.create(name:"Ubuntucamp", description:"Ubuntucamp will change your life", location: "Rotterdam",
includes_food: false, includes_drinks: false, price: 10, starts_at: 2017-04-12, ends_at: 2017-04-2017,
capacity: 10, active: true, user: derk)
