class SandwichesController < ApplicationController
	
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		ingredients = sandwich.ingredients.all

		unless sandwich  #same as saying if sandwich.nil?
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		render json: sandwich
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		sandwich.update(sandwich_params)

		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		sandwich.destroy

		render json: sandwich
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient])

		unless sandwich
			render json: {error: "oops error :( "}, status: 404
			return
		end

		sandwich_ingredient = sandwich.ingredients.push(ingredient)

		sandwich.total_calories = (sandwich.total_calories) + (ingredient.calories)
		sandwich.save
		#render json: sandwich_ingredient
		render json: {sandwich: sandwich, ingredients: sandwich.ingredients}
	end

	private

	# def load_sandwich
	# 	sandwich = Sandwich.find_by(id: params[:id])
	# 	unless sandwich
	# 		render json: {error: "sandwich not found"}, status: 404
	# 		return
	# 	end
	# 	return sandwich
	# end

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end
end
