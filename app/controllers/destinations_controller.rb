class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
    # @meals = @destination.meals
    @dish_count = 10
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to @destination
    else
      render 'new'
    end
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