class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
  end
  
  def update
    @post = Post.find(params[:id])
  end
  
  def delete
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post successfully destroyed"
      redirect_to root_url
    else
      flash[:error] = "Post not present"
      redirect_to :back
    end
  end
  
  
end
