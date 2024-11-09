class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new(garage_params)
    @garage.user = current_user
    if @garage.save!
      redirect_to garages_path
    else
      render :new
    end
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
    @garage = Garage.find(params[:id])
      if @garage.update(garage_params)
        redirect_to garages_path
      else
        render :edit
      end
  end

  def destroy
    @garage = Garage.find(params[:id])
      if @garage.destroy
        redirect_to garages_path
      end
  end

  def my_garage
    @garage = Garage.where(user: current_user)
  end

  private

  def garage_params
    params.require(:garage).permit(:name, :address, :user_id)
  end
end
