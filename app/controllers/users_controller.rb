class UsersController < ApplicationController
	def index
		@users=User.all
	end
	
	def new
		@user=User.new
	end
	
	def create
		@user = User.new(
			params.require(:user).permit(:name, :email, :favorite_team, :password, :password_confirmation, :image))
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to user_path@user
		else
  			render :new
  		end
	end

	def edit
		
	end
	def update
	end
	
	def destroy
	end


end
