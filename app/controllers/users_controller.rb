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
			redirect_to user_path @user
		else
  			render :new
  		end
	end

	def edit
      @user = User.find(params[:id])
    end
	
	 def update
      @user = User.find(params[:id])

      if @user.update_attributes(params.require(:user).permit(:name, :email, :favorite_team))
      	redirect_to user_path @user
      else
      	render :edit
      end

    end
	
	
	def destroy
      @user = User.find(params[:id])
      if @user.destroy
      	session.delete(:user_id)
      redirect_to root_path
  	else
      end
	end


end
