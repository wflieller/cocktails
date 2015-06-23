# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ email: 'walker@texasranger.com', password: 'cowboy'}, { email: 'heidi@mango.com', password: 'mango'}, { email: 'pepperjack@h1z1.com', password: 'notswiss'}, { email: 'nancy@stuffedpizza.com', password: 'pepperoni'}, { email: 'alwan@luckyclover.com', password: 'boxer'}, { email: 'nathan@sudocode.com', password: 'sudo'}])

drinks = Drink.create([{ name: 'Old Fashioned', directions: 'In an Old Fashioned glass, muddle the bitters, sugar, orange wheel, cherry and a splash of soda', user_id: users.[3].id}, { name: 'Scotch & Soda', directions: 'Add the Scotch to a highball or rocks glass filled with ice. Top with soda and stir briefly.', user_id: users.[2].id}, { name: 'Gin & Tonic', directions: 'Add the gin to a highball glass and fill with fresh ice. Top with tonic water. Squeeze the lemon and lime wedges into the drink, drop into the glass and stir', users.[1].id}, { name: 'White Russian', directions: 'Add the vodka and Kahlúa to an Old Fashioned glass filled with ice. Top with a large splash of heavy cream and stir.', users.[4].id}]) 

ingredients = Ingredient.create([{ alcoholic: false, name: 'bitters'}, { alcoholic: false, name: 'sugar'}, { alcoholic: false, name: 'soda'}, { alcoholic: true, name: 'bourbon', brand: 'makers 64'}, { alcoholic: true, name: 'gin', brand: 'beefeater'}, { alcoholic: false, name: 'tonic'}, { alcoholic: true, name: 'scotch', brand: 'Mclovin'}, { alcoholic: true , name: 'vodka', brand: 'kettle one'}, { alcoholic: true , name: 'kahlúa', brand: 'kahlúa'}])
