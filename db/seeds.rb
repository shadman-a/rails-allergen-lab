# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

5.times do
    User.create(name: Faker::Name.name)
end

20.times do
    Recipe.create(title: Faker::Food.dish, user_id: User.all.sample.id)
end

50.times do
    Ingredient.create(name: Faker::Food.ingredient, allergen: [true, false].sample)
end

25.times do
    RecipeIngredient.create(ingredient_id: Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id)
end