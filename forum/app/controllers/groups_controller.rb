class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.posts.build
  end

  def create 
		@group = Group.new(group_params) 

		if @group.save!
			redirect_to @group
		else
			render 'new'
		end
	end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  private 
  	def group_params
  		params.require(:group).permit(:title, posts_attributes: [:id, :title, :content])
  	end
end
