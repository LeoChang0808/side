class PetsController < ApplicationController
  def index

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

  end

  def show

  end

  def destroy

  end

  def params_pet
    params.require(:pet).permit(:name, :type)
  end
end
