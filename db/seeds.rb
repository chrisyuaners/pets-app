# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.create!(first_name: "Chris", last_name: "Yuan", age: 24, email: "chris@gmail.com")
Owner.create!(first_name: "Rob", last_name: "Yuan", age: 23, email: "rob@gmail.com")
Owner.create!(first_name: "Joe", last_name: "Flacko", age: 26, email: "joe@gmail.com")
Owner.create!(first_name: "Danny", last_name: "Brown", age: 30, email: "danny@gmail.com")
Owner.create!(first_name: "Dex", last_name: "Ter", age: 13, email: "dex@gmail.com")

Pet.create!(name: "Snowy", category: "dog", owner_id: 1)
Pet.create!(name: "Milo", category: "dog", owner_id: 1)
Pet.create!(name: "Sasha", category: "dog", owner_id: 1)
Pet.create!(name: "Charlie", category: "dog", owner_id: 2)
Pet.create!(name: "George", category: "dog", owner_id: 3)
Pet.create!(name: "Mona", category: "cat", owner_id: 4)
Pet.create!(name: "Prince", category: "cat", owner_id: 5)
