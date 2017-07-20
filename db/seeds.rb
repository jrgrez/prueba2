# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Category.destroy_all
User.destroy_all

u1 = User.create(name:"joaquin", email: "joaquin@hola.cl")
u2 = User.create(name:"david", email: "david@hola.cl")
u3 = User.create(name:"rosario", email: "rosario@hola.cl")

c1 = Category.create(name: "Neumaticos")
c2 = Category.create(name: "Luces")
c3 = Category.create(name: "Repuestos")
c4 = Category.create(name: "Accesorios")
c5 = Category.create(name: "Radios")
c6 =Category.create(name: "Parlantes")

Item.create(size: 10, category: c1, description: "Neumatico Pirelli", user: u1)
Item.create(size: 8, category: c1, description: "Neumatico Kumho", user: u1)
Item.create(size: 7, category: c1, description: "Neumatico Chino")
Item.create(size: 1, category: c2, description: "Ampolleta Halogena", user: u2)
Item.create(size: 2, category: c2, description: "Ampolleta Dicroica", user: u1)
Item.create(size: 3, category: c2, description: "Luz Neon", user: u1)
Item.create(size: 20, category: c3, description: "Parachoque Nissan")
Item.create(size: 15, category: c3, description: "Parabrisa Chevrolet", user: u3)
Item.create(size: 12, category: c3, description: "Puerta Chevrolet", user: u2)
Item.create(size: 3, category: c3, description: "Manilla Delantera", user: u2)
Item.create(size: 4, category: c3, description: "Foco Delantero derecho")