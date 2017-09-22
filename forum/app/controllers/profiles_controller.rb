class ProfilesController < ApplicationController
  def new
    if current_user
      @profile = Profile.new
      @exists = Profile.find_by_user_id(current_user.id)
      if @exists
        redirect_to @exists
      end
    else
      redirect_to groups_path
    end
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
  		params.require(:profile).permit(:first,:last,:year,:dorm, :user_id,:avatar)
  	end
  end
