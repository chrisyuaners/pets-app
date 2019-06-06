class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @owners = Owner.all
    @pet = Pet.new
  end

  def create
    pet = Pet.create(pet_params)
    redirect_to pet_path(pet)
  end

  def edit
    @owners = Owner.all
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(pet_params)
    redirect_to pet_path(pet)
  end

  def destroy
    pet = Pet.find(params[:id])
    pet.delete
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :category, :owner_id)
  end
end
