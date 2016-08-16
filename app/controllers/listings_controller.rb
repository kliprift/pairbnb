class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    if signed_in?
      @listings = Listing.new
    else
      flash.alert = "You must be logged in"
      redirect_to root_path
    end
  end

  def show
    @listing= Listing.find(params[:id])
  end

  def create
    @listings = current_user.listings.build(listing_params)
      if @listings.save
        redirect_to 'listing_path'
      else
        render :new
      end
  end
  

  private

  def listing_params
    params.require(:listing).permit(
        :property_type, :property_location, :property_address,
        :property_description, :property_price_per_night, :date_availability,
        :max_people)
  end

end
