class PostsController < ApplicationController
# this will show the entire conversation of all of the users in the league
  def index
  	@posts = Post.all
  
  end
# show will show one post 

  def show
    @post = Post.find(params[:id])
  
  end

  def new
    @post = Post.new
  
  end

  def create
  	@post = Post.new(params.require(:name))

    if @post.save
      flash.alert = "trash successfully talked"
      redirect_to posts_path
    else flash.alert = "oops, that didnt work"
      render "new"
    end
  	
  end

  def edit
    @post = post.find(params[:id])
  end

  def update
  	
  end

  def destroy
    
  end

 
end
