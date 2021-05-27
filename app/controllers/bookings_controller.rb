class BookingsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save
      redirect_to offers_path, notice: "Booked successfully."
    else
      render "offers/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
