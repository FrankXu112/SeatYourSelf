class ReservationsController < ApplicationController
	before_filter :load_restaurant
	before_filter :ensure_logged_in, only: [:create, :destroy]

	def new
    @reservation = @restaurant.reservations.build
	end

	def create
		@reservation = @restaurant.reservations.build(r_params)
    if @reservation.save
    	redirect_to restaurant_path(@restaurant), notice: "You have successfully booked an reservation!"
    else
    	render :new
    end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to restaurant_path(@restaurant)
	end

	def show
		@reservation = Reservation.find(params[:id])
	end
  
  private
  def r_params
  	params.require(:reservation).permit(:datetime, :seats, :restaurant_id).merge({user_id: current_user.id})
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end