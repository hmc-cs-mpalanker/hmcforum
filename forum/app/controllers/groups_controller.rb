class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def show
    @group = Group.find(param[:id])
  end

  def index
    @group = Group.all
  end
end
