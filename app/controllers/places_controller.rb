class PlacesController < ApplicationController
  def index
    @search_places_form = SearchPlacesForm.new(search_params)
    @places = @search_places_form.search.order(id: :desc)
  end

  def show; end

  private

  def search_params
    params[:q]&.permit(:name)
  end
end
