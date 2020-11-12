# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
puts "Clearing ingredients database"
Ingredient.destroy_all
Cocktail.destroy_all
puts "Creating ingredients"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = open(url).read
data_hash = JSON.parse(data)
ingredients = data_hash["drinks"]
  ingredients.each do |ingredient|
    Ingredient.create(name: ingredient["strIngredient1"])

  end

Cocktail.create(name:'Creme de Cacao')
Cocktail.create(name:'Peach Vodka')
Cocktail.create(name:'Johnnie Walker')
Cocktail.create(name:'Peppermint schnapps')