# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sandwich1 = Sandwich.create(name:"BLT", bread_type: "rye")
sandwich2 = Sandwich.create(name:"Turkey Club", bread_type: "rye")
sandwich3 = Sandwich.create(name:"Baconator", bread_type: "rye")
sandwich4 = Sandwich.create(name:"Quarter Pounder", bread_type: "rye")

ingredient1 = Ingredient.create(name:"mustard", calories:0.0)
ingredient2 = Ingredient.create(name:"ketchup", calories:0.0)
ingredient3 = Ingredient.create(name:"lettuce", calories:0.0)
ingredient4 = Ingredient.create(name:"bbqsauce", calories:0.0)
ingredient5 = Ingredient.create(name:"onions", calories:0.0)
ingredient6 = Ingredient.create(name:"cheese", calories:0.0)



sandwich1.ingredients.push(ingredient1)
sandwich1.ingredients.push(ingredient2)
sandwich1.ingredients.push(ingredient3)
sandwich1.ingredients.push(ingredient4)

sandwich2.ingredients.push(ingredient1)
sandwich2.ingredients.push(ingredient2)
sandwich2.ingredients.push(ingredient3)
sandwich2.ingredients.push(ingredient4)


sandwich3.ingredients.push(ingredient1)
sandwich3.ingredients.push(ingredient2)
sandwich3.ingredients.push(ingredient3)
sandwich3.ingredients.push(ingredient4)

sandwich4.ingredients.push(ingredient1)
sandwich4.ingredients.push(ingredient2)
sandwich4.ingredients.push(ingredient3)
sandwich4.ingredients.push(ingredient4)


