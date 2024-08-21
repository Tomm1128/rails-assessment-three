# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Pizzeria.destroy_all
Pizza.destroy_all

pizzerias = Pizzeria.create!([
  {
    name: "Sottocasa NYC",
    address: "298 Atlantic Ave, Brooklyn, NY 11201",
  },
  {
    name: "PizzArte",
    address: "69 W 55th St, New York, NY 10019",
  },
  {
    name: "San Matteo NYC",
    address: "1559 2nd Ave, New York, NY 10028"
  }
])

pizzas = [
  { name: "Margherita", description: "Tomato, mozzarella, and basil", pizzeria: pizzerias[0] },
  { name: "Marinara", description: "Tomato, garlic, oregano, and olive oil", pizzeria: pizzerias[0] },
  { name: "Quattro Stagioni", description: "Tomatoes, artichokes, ham, mushrooms, and olives", pizzeria: pizzerias[1] },
  { name: "Diavola", description: "Tomato, mozzarella, and spicy salami", pizzeria: pizzerias[1] },
  { name: "Capricciosa", description: "Tomato, mozzarella, artichokes, ham, mushrooms, and olives", pizzeria: pizzerias[2] },
  { name: "Napoli", description: "Tomato, mozzarella, anchovies, and capers", pizzeria: pizzerias[2] }
]

Pizza.create!(pizzas)
