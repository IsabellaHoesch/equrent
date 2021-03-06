class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offers = Offer.all
    @dropdown = Offer::SPORT_TYPES.clone
    @dropdown.push(nil)
    @dropdown.reverse!
    # search bar - by sport
    if params[:query].present? && params[:sport].present?
      sql_query = "name ILIKE :query AND sport_type ILIKE :sport"
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%", sport:  "%#{params[:sport]}%")
    elsif params[:sport].present?
      sql_query = "sport_type ILIKE :sport"
      @offers = Offer.where(sql_query, sport:  "%#{params[:sport]}%")
    elsif params[:query].present?
      sql_query = "name ILIKE :query"
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
    else
      @offers = Offer.all
    end

    # geomapping
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('200w.webp')
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
    authorize @offer
    if @offer.save
      redirect_to offers_path, notice: "Offer was successfully created."
    else
      render :new
    end
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer

    @markers = 
      [{
        lat: @offer.latitude,
        lng: @offer.longitude,
        image_url: helpers.asset_url('200w.webp')
      }]
  end


    # offer = @offer.geocoded.map
    # @markers = 
    #   {
    #     lat: offer.latitude,
    #     lng: offer.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { offer: offer }),
    #     image_url: helpers.asset_url('200w.webp')
    #   }


  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    authorize @offer
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    authorize @offer
    redirect_to offers_path(@offer)
  end

  private

  def offer_params
    params.require(:offer).permit(:offer_type, :description, :photo, :sport_type, :price, :address, :name)
  end
end
