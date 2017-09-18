class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create 
		@group = Group.new(group_params) 

		if @group.save
			redirect_to groups_index_path
		else
			render 'new'
		end
	end

  def show
    @group = Group.find(param[:id])
  end

  def index
    @group = Group.all
  end
end
