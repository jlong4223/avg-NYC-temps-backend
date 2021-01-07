class TemperaturesController < ApplicationController


  # GET /temperatures
  def index
    @temperatures = Temperature.all

    render json: @temperatures.to_json(include: :location)
  end



  # POST /temperatures
  def create
    @temperature = Temperature.new(temperature_params)

    if @temperature.save
      render json: @temperature, status: :created, location: @temperature
    else
      render json: @temperature.errors, status: :unprocessable_entity
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.


    # Only allow a list of trusted parameters through.
    def temperature_params
      params.require(:temperature).permit(:average_high_f, :average_low_f, :month, :location_id)
    end
end
