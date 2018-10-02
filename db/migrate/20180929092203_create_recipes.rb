class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :recipe_id
      t.integer :u_id
      t.string :recipe_name
      t.float :calories
      t.text :cooking_details
      t.text :recipe_description

      t.timestamps
    end
  end
end
