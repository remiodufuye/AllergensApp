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
Allergy.destroy_all


emily = User.create(name:"Emily")
remi = User.create(name:"Remi")
trevor = User.create(name:"Trevor")
paul = User.create(name:"Paul")
bayo = User.create(name:"Bayo")

beefstew = Recipe.create(name:"Beef Pudding" , user:emily )
jollofrice = Recipe.create(name:"Jollof Rice" , user:remi )
egusi = Recipe.create(name:"Egusi Stew" ,  user:paul )
pomostew = Recipe.create(name:"Pomo Stew" ,  user:bayo )

tomatoes = Ingredient.create(name:"tomatoes")
onions = Ingredient.create(name:"onions")
salt = Ingredient.create(name:"salt")
thyme = Ingredient.create(name:"thyme")
paprika = Ingredient.create(name:"paprika") 

 recep1 = RecipeIngredient.create(recipe:egusi ,ingredient:tomatoes)
 recep2 = RecipeIngredient.create(recipe:egusi ,ingredient:onions)
 recep3 = RecipeIngredient.create(recipe:egusi ,ingredient:salt)
 recep4 = RecipeIngredient.create(recipe:jollofrice ,ingredient:tomatoes)

 recep5 = RecipeIngredient.create(recipe:pomostew ,ingredient:tomatoes)
 recep6 = RecipeIngredient.create(recipe:pomostew ,ingredient:onions)
 recep7 = RecipeIngredient.create(recipe:pomostew ,ingredient:salt)
 recep8 = RecipeIngredient.create(recipe:pomostew ,ingredient:thyme)

 allergic1 = Allergy.create(user:emily , ingredient:paprika )
 allergic2 = Allergy.create(user:paul , ingredient:paprika )
 allergic3 = Allergy.create(user:remi , ingredient:thyme )

 james = User.create(name:"james")
 jambalaya = Ingredient.create(name:"jambalaya")
 allergic2 = Allergy.create(user:james , ingredient:jambalaya )


