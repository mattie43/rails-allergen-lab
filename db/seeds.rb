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
IngredientsRecipe.destroy_all

3.times { User.create(name: Faker::Name.first_name) }
5.times do
    Recipe.create(name: Faker::Food.dish, user: User.all.sample)
end
50.times do
    Ingredient.create(name: Faker::Food.ingredient, allergy_count: rand(3))
end
20.times { IngredientsRecipe.create(recipe: Recipe.first, ingredient: Ingredient.all.sample) }
20.times { IngredientsRecipe.create(recipe: Recipe.second, ingredient: Ingredient.all.sample) }
20.times { IngredientsRecipe.create(recipe: Recipe.third, ingredient: Ingredient.all.sample) }
20.times { IngredientsRecipe.create(recipe: Recipe.fourth, ingredient: Ingredient.all.sample) }
20.times { IngredientsRecipe.create(recipe: Recipe.fifth, ingredient: Ingredient.all.sample) }