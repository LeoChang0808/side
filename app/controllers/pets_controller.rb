class PetsController < ApplicationController
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
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(params_pet)
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def destroy

  end

  def params_pet
    params.require(:pet).permit(:name, :type)
  end
end
