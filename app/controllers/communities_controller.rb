class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show]
  def index
    @communities = Community.all 
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    @community.account_id = current_account.id
    if @community.save
      redirect_to communities_path, notice: "Create community successfully"
    else
      render :new
    end
  end

  def show
    @posts = @community.posts.limit(20).sort_by{|p| p.score}.reverse
  end
 
  private
  def set_community
    @community = Community.find(params[:id])
  end

  def community_params
    params.require(:community).permit(:name, :url, :rules, :summary)
  end

end
