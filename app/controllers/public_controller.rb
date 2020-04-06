class PublicController < ApplicationController
  def index
    @communities = Community.all.limit(5)
    @posts = Post.limit(20)
    @vote = Vote.new
  end
  
  def profile
    @profile = Account.find_by_username(params[:username])
    @posts = @profile.posts
  end
end
