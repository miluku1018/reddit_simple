class PostsController < ApplicationController
  def index
    @psots = Post.all 
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to psots_path, notice: "Create post successfully"
    else
      render :new
    end
  end

  def show
 
  end
 
  def post_params
    params.require(:post).permit(:title, :body, :upvotes, :downvotes)
  end

end
