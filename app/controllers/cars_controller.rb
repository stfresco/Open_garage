class CarsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car), notice: "You have register a new car"
    else
      render :new, alert: "We have a problem to register your car"
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
      if @car.update(car_params)
        redirect_to cars_path
      else
        render :edit
      end
  end

  def destroy
    @car = Car.find(params[:id])
      if @car.destroy
        redirect_to cars_path
      end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :color, :year, :price, :model, :capacity, :garage_id, :image)
  end
end
