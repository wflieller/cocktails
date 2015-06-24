# The brains behind the drinks, inherant to applictionController
class DrinksController < ApplicationController
	# before helper when a user is logged in, only alow them to create records in the db
	before_action :require_login, :only => :create
	
	# method defined as index, list all instances of Drink
	def index
		@drinks = Drink.all
	end
	
	# method defined as create
	def create
		# A drink is instantiated by the current user
		@drink = current_user.drinks.build(drink_params)
		# If the drink instance is saved as a record in our db
		if	@drink.save 
			# render json for that drink instance
			render :json => @drink
		else 
			# otherwise render json in the for of an error
			render :json => { :errors => @drink.errors.full_messages}, :status => 422
		end
	end
	# method defined as show
	def show
		# find by id and show that particular instance of a drink 
		@drink = @user.drinks.find(params[:id])
	end
	
	def edit
		# users would be able to update records of drinks in the db, however before_action is currently preventing this
		@drink.update
		#would redirect to home page
		redirect_to root_url
	end
	 
	def destroy
		# users would be able to delete records in the db, however before_action is currently preventing this
		@drink.destroy
		#would redirect to home page
		redirect_to root_url
	end

	private 
	# STRONG PARAMS
	def drink_params
		# when creating or updating with multiple attributes Rails 4 requires this
		# prevents mass assignment
		# when a drink is created user can create a record that contains the following params all at once
		params.require(:drink).permit(:name, :directions, :picture)
	end
end

# over all well done, could dry up the unused methods a bit however the serve a nice backbone controller actions we might want to have created down the lin
# the strong params in the bottom of the page typically are in array format I believe? ([:name,:directions,:picture])
