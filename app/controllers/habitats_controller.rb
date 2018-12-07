class HabitatsController < ApplicationController

  def show
    @habitat = Habitat.find(params[:id])
    @animals = Animal.all
  end

end
