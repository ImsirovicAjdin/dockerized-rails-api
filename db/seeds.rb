# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# in db>seed.rb

menu1 = MenuItem.create(menu_name: "Burek", restaurant_name: "Pie shop", menu_description:"Excellent burek with yogurt")
menu2 = MenuItem.create(menu_name: "Cevapi", restaurant_name: "Zeljo", menu_description:"The best cevapi from Sarajevo")
menu3 = MenuItem.create(menu_name: "Boza", restaurant_name: "Evropa", menu_description:"Perfect summer drink")