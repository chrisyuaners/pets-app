class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    owner = Owner.new(owner_params)
    if owner.valid?
      owner.save
      redirect_to owner_path(owner)
    else
      flash[:message] = owner.errors.full_messages[0]
      redirect_to new_owner_path
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    owner = Owner.find(params[:id])
    owner.update(owner_params)
    redirect_to owner_path(owner)
  end

  def destroy
    owner = Owner.find(params[:id])
    owner.delete
    redirect_to owners_path
  end

  def many
    @owners = Owner.all.select{|owner| owner.pets.count >= 2}
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :age, :email)
  end
end
