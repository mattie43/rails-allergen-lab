# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
# RecipesIngredient.destroy_all

a = User.create(name: "John")
b = User.create(name: "Matt")
r1 = Recipe.create(name: "Pie", user: a)
r2 = Recipe.create(name: "Soup", user: b)
i1 = Ingredient.create(name: "salt", allergy_count: 2, recipe: r1)
i2 = Ingredient.create(name: "pepper", allergy_count: 5, recipe: r1)
i3 = Ingredient.create(name: "oregano", allergy_count: 1, recipe: r2)
i4 = Ingredient.create(name: "cinnamon", allergy_count: 2, recipe: r2)
# RecipesIngredient.create(recipe: r1, ingredient: i1)
# RecipesIngredient.create(recipe: r1, ingredient: i2)
# RecipesIngredient.create(recipe: r1, ingredient: i3)
# RecipesIngredient.create(recipe: r2, ingredient: i1)
# RecipesIngredient.create(recipe: r2, ingredient: i2)
# RecipesIngredient.create(recipe: r2, ingredient: i4)