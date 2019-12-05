class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :recipes , through: :recipe_ingredients 
    
   
end
