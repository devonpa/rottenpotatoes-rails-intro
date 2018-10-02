# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cbc_users = [	
				{:u_id => 1, :firstname => 'May', :lastname => 'Burn', :emailaddress => 'mayburn@gmail.com', :username => 'mayburncooks', :password => 'HAHSED'},
				{:u_id => 2, :firstname => 'Tim', :lastname => 'Dim', :emailaddress => 'timdim@gmail.com', :username => 'timdimbim', :password => 'HAHSED'},
			]


recipes = [	
				{:recipe_id => 1, :u_id => 1, :recipe_name => 'Scrambled Eggs', :calories => '330', :cooking_details => 'Crack the egg. Put it on the burner. Move while cooking. Eat.', :recipe_description => 'Cooked Eggs'},
				{:recipe_id => 2, :u_id => 1, :recipe_name => 'Toast', :calories => '150', :cooking_details => 'Take a slice of bread and heat it until it is crisp.', :recipe_description => 'Heated bread'},
				{:recipe_id => 3, :u_id => 2, :recipe_name => 'Noodles', :calories => '550', :cooking_details => 'Boil those noodles.', :recipe_description => 'Cooked noodles'},
			]

ingredients = [	
				{:ingredient_id => 1, :recipe_id => 1, :ingredient_name => 'Egg', :ingredient_quantity => 2, :ingredient_quantity_sizeref => nil},
				{:ingredient_id => 2, :recipe_id => 2, :ingredient_name => 'Sliced bread', :ingredient_quantity => 2, :ingredient_quantity_sizeref => 'slices'},
				{:ingredient_id => 3, :recipe_id => 3, :ingredient_name => 'Uncooked noodles', :ingredient_quantity => 1, :ingredient_quantity_sizeref => 'pack'},
				{:ingredient_id => 4, :recipe_id => 3, :ingredient_name => 'Water', :ingredient_quantity => 4, :ingredient_quantity_sizeref => 'cups'},
			]		

cbc_users.each do |users|
  CbcUser.create!(users)
end

recipes.each do |recipe|
  Recipe.create!(recipe)
end

ingredients.each do |ingredient|
  Ingredient.create!(ingredient)
end
