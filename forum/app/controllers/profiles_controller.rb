class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
  	@profile = Profile.new(profile_params)

  	if @profile.save
  		redirect_to @profile
  	else
  		render 'new'
  	end
  end

  def show
    @profile = Profile.find(params[:id])
    @user = User.find(@profile.user_id)
  end

  def index
    @profiles = Profile.all
  end

  private
  	def profile_params
  		params.require(:profile).permit(:first,:last,:year,:dorm, :user_id)
  	end
  end
