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
  	@post = Post.create(post_params)

    if @post.save

      redirect_to posts_path
    else 
      render "new"
    end
  	
  end

private

def post_params
  params.require(:post).permit(:tilte, :body)
  
end

 

 
end
