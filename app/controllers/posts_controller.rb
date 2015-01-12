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
  	@post = Post.new(post_params)
  	
  end

  def edit
  end

  def update
  	
  end

  def destroy
    
  end

 
end
