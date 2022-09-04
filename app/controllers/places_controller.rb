class PlacesController < ApplicationController
  def index
    @search_places_form = SearchPlacesForm.new(search_params)
    places_result = @search_places_form.search.order(id: :desc)
    @place_count = places_result.count
    @places = places_result.page(params[:page])
  end

  def show
    @place = Place.includes(:congestions, :events, :stores, :tags).find(params[:id])
  end

  private

  def search_params
    params[:q]&.permit(:name, :business_hours, :latitude, :longitude, :tag_id)
  end
end
