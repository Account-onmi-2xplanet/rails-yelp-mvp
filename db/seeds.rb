# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE1",  phone_number: "(21)22221", category: "chinese" }
dishoom2 = { name: "Dishoom2", address: "7 Boundary St, London E2 7JE2",  phone_number: "(21)22222", category: "italian" }
dishuum3 = { name: "Dishuum3", address: "7 Boundary St, London E2 7JE3",  phone_number: "(21)222223", category: "japanese" }
dishoom4 = { name: "Dishoom4", address: "7 Boundary St, London E2 7JE4",  phone_number: "(21)222224", category: "french" }
dishoom5 = { name: "Dishoom5", address: "7 Boundary St, London E2 7JE5",  phone_number: "(21)222225", category: "belgian" }

[ dishoom, dishoom2, dishuum3, dishoom4, dishoom5 ].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
  end
  puts "Finished!"