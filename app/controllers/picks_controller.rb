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
	 @pick = current_user.picks.new(pick_params)
	 if @pick.save
	 	redirect_to pick_path(@pick)
	 else
	 	render :new
	 end
		
	end

	private
	def pick_params
		params.require(:pick).permit(:week, :team_name)
		
	end

	


	
end

# make sure that this has a timestamp and that the timestamp says that this happened before the start of the game

