class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @user = current_user
    @offer = Offer.new(offer_params)
    @offer.user = @user
    if @offer.save
      redirect_to offers_path, notice: "Offer was successfully created."
    else
      render :new
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit

  end

  private

  def offer_params
    params.require(:offer).permit(:offer_type, :description, :offer_img, :sport_type, :price, :address, :name)
  end
end
