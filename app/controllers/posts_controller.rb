class PostsController < ApplicationController
  def index
  	@post = Post.all
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

  def show
  end
end
