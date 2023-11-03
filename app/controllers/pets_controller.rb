class PetsController < ApplicationController

  before_action :set_pet, only: [:edit, :update, :show, :destroy]

  def index
    @pets = Pet.order(id: :desc)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = current_user.create_pet(params_pet)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(params_pet)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def show
  end

  def destroy

  end

  def params_pet
    params.require(:pet).permit(:name, :type)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
