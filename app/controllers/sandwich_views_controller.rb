class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		render 'index'
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients.all
		@everyIngredient = Ingredient.all
		# puts "test"
		# puts @sandwich
		# puts @ingredients
		render 'show'
	end
	
end
