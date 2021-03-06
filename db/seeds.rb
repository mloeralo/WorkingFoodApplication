# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Group.create(cat_name:'Dairy') 1
# Group.create(cat_name:'Meats') 2
# Group.create(cat_name:'Fruits') 3
# Group.create(cat_name:'Vegetables') 4
# Group.create(cat_name:'Grains') 5
# Group.create(cat_name:'Spices') 6
# Group.create(cat_name:'Sweets') 7

# Categories.create(cat_id:3,cat_name:'Dairy')
# Categories.create(cat_id:4,cat_name:'Fruit')
# Categories.create(cat_id:5,cat_name:'Vegetables')
# Categories.create(cat_id:6,cat_name:'Spices')
# Categories.create(cat_id:7,cat_name:'Oils')
# Categories.create(cat_id:8,cat_name:'Sauces')
#
# Unit.create(unit_name:'kilograms',unit_symbol:'kg')
# Unit.create(unit_name:'grams',unit_symbol:'g')
# Unit.create(unit_name:'miligrams',unit_symbol:'mg')
# Unit.create(unit_name:'ounces',unit_symbol:'oz')
# Unit.create(unit_name:'fluid Ounces',unit_symbol:'fl oz')
# Unit.create(unit_name:'cups',unit_symbol:'c')
# Unit.create(unit_name:'pints',unit_symbol:'pt')
# Unit.create(unit_name:'quart',unit_symbol:'qt')
# Unit.create(unit_name:'gallon',unit_symbol:'gal')
# Unit.create(unit_name:'Kiloliter',unit_symbol:'kL')
# Unit.create(unit_name:'liter',unit_symbol:'L')
# Unit.create(unit_name:'mililiters',unit_symbol:'mL')
# Unit.create(unit_name:'teaspoon',unit_symbol:'tsp')
# Unit.create(unit_name:'tablespoon',unit_symbol:'Tbsp')
# Unit.create(unit_name:'Test',unit_symbol:'n/a')
#
# Ingredient.create(ing_name:'Chicken',weight:3,quantity:3,description:'Cage free eggs',unit_id:1,cat_id:3,expiration:'2018-12-20')
# Ingredient.create(ing_name:'Eggs',weight:3,quantity:3,description:'Cage free eggs',unit_id:1,cat_id:3,expiration:'2018-12-20')
# Ingredient.create(ing_name:'Lettuce',weight:2,quantity:1,description:'Lettuce',unit_id:1,cat_id:5,expiration:'2018-12-20')
# Ingredient.create(ing_name:'Tomatoes',weight:6,quantity:6,description:'Organic tomatoes',unit_id:1,cat_id:5,expiration:'2018-12-20')
# Ingredient.create(ing_name:'Onion',weight:4,quantity:3,description:'White onion',unit_id:1,cat_id:5,expiration:'2018-12-20')
# Favorite.create(fav_name:'Baked lemon chicken and mushroom',recipe_link:'https://www.allrecipes.com/recipe/8714/baked-lemon-chicken-with-mushroom-sauce/')
# Favorite.create(fav_name:'Egg and Sausage Casserole',recipe_link:'https://www.allrecipes.com/recipe/20916/egg-and-sausage-casserole/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203')
# Favorite.create(fav_name:'Irish Cream Ice Cream',recipe_link:'https://www.allrecipes.com/recipe/220449/irish-cream-ice-cream/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%203')
# Favorite.create(fav_name:'Strawberry Spinach Salad ',recipe_link:'https://www.allrecipes.com/recipe/14276/strawberry-spinach-salad-i/?internalSource=hub%20recipe&referringContentType=Search&clickId=cardslot%204')
# #User.create(name: 'Steve',email: 'steve@gmu.edu',password:'test')
# Ingredient.create(unit_id:1,group_id:8,ing_name:'Eggs',weight:3,quantity:3,description:'Cage free',expiration:'2018-12-20')
# Ingredient.create(unit_id:2,group_id:7,ing_name:'Cheese',weight:3,quantity:3,description:'Low fat',expiration:'2018-12-20')
# Fridge.create(ingredient_id:5, user_id:1)
# Fridge.create(ingredient_id:6, user_id:2)
# Ingredient.create(unit_id:2,group_id:7,ing_name:'Milk',weight:3,quantity:3,description:'Low fat',expiration:'2018-12-20')
# Fridge.create(ingredient_id:7, user_id:2)