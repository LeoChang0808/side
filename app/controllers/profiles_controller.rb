class ProfilesController < ApplicationController

  before_action :set_profile, only: [:edit, :update, :show, :destroy]

  def index
    @profiles = Profile.order(id: :desc)
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(params_profile)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  def params_profile
    params.require(:profile).permit(:name, :age)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
