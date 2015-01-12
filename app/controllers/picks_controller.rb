class PicksController < ApplicationController
	def index
		@picks = Pick.all
		
	end

	def show
		@pick = Pick.show
		
	end

	def new
		# users will make a pick that will be posted to the index
		@pick = Pick.new
	end
	def create
		
	end
	def edit
		
	end
	def update	
	end

	def destroy
		
	end
end

# picks is going to be a drop down,
# do i still need all of the these methods?
