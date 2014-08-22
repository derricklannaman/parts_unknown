class WelcomeController < ApplicationController

  def index
    @locale = Destination.where(name: 'Havana').first
    # @featured_dish = @locale.meals.first
  end

  def how
  end

  def about
  end

  def contact
  end

end
