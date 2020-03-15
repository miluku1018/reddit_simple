class CommunitiesController < ApplicationController
  def index
    @communities = Community.all 
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to communities_path, notice: "Create community successfully"
    else
      render :new
    end
  end

  def show
 
  end
 
  def community_params
    params.require(:community).permit(:name, :url, :rules, :summary)
  end

end
