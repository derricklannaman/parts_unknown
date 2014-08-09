class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @meals = @destination.meals
  end


  private

    def destination_params
      params.require(:destination).permit(:name, :description)
    end

end