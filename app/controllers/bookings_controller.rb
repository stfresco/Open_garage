class BookingsController < ApplicationController
  before_action :set_car, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path, status: :see_other
  end

  def my_bookings
    @my_bookings = Booking.where(user: current_user)
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :finish_date, :car_id)
  end
end
