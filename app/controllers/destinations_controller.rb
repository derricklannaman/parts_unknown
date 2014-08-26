class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @meals = @destination.meals
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    if @destination.save
      redirect_to destinations_path
    else
      render :edit
    end
  end


  private

    def destination_params
      params.require(:destination).permit(:name, :description, :destination_image)
    end

end