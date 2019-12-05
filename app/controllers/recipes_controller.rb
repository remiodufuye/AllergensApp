    class RecipesController < ApplicationController
    
        before_action :find_recipe, only: [:show , :edit ,:update , :destroy]
    
                def index
                    @recipes = Recipe.all
                end 

                def show 
               
                end 

                def new
                    @recipe = Recipe.new
                end 

                def create
                    @create = Recipe.create(recipe_strong_params)
                    redirect_to recipes_path 
                end 

                def edit
        
                end 

                def update
                    @recipe.update(recipe_strong_params)
                    redirect_to recipe_path(@recipe)
                end 

                def destroy
                    @recipe.delete
                    redirect_to recipes_path
                end 



        private

        def find_recipe
            @recipe = Recipe.find(params[:id])
        end 

        def recipe_strong_params
            params.require(:recipe).permit(:name,:user_id)
        end 

    end

