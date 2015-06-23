class DrinksController < ApplicationController
	
	def index
		@drinks = Drink.all
	end
	
	def create
		@drink = current_user.drinks.build(drink_params)
		
		if	@drink.save 
			render :json => @drink
		else 
			render :json => { :errors => @drink.errors.full_messages}, :status => 422
	end
	
	def show
		@drink = @user.drinks.find(params[:id])
	end
	
	def edit
		@drink.update
		redirect_to root_url
	end
	 
	def destroy
		@drink.destroy
		redirect_to root_url
	end

	private 
	def drink_params
		params.require(:drink).permit(:name, :directions, :picture)
	end
