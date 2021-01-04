class LocationsController < ApplicationController
  before_action :set_location, only: [:show]

  # GET /locations
  def index
    @locations = Location.all

    # i am including the temperatues associated with each location below
    render json: @locations.to_json(include: :temperatures)
  end

  # were showing the temperatures related to each location using the include bc we cant inslude a "subschema" to the location model
  # GET /locations/1
  def show
    render json: @location.to_json(include: :temperatures)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end
end
