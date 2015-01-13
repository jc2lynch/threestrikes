class PicksController < ApplicationController
	def index
		@picks = Pick.all
		
	end

	def show
		@pick = Pick.find(:id => params[:id])
		
	end

	def new
		# users will make a pick that will be posted to the index
		@pick = Pick.new
	end
	def create
	 @pick = Pick.new(params.require(:user)
	 	.permit(:week, :team_name))
	 if @pick.save
	 	redirect_to user_path @user
	 end
		
	end
	
end

# make sure that this has a timestamp and that the timestamp says that this happened before the start of the game

