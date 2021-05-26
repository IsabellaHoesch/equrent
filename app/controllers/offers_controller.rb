class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('icon.png')
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

  private

  def offer_params
    params.require(:offer).permit(:offer_type, :description, :offer_img, :sport_type, :price, :address, :name)
  end
end
