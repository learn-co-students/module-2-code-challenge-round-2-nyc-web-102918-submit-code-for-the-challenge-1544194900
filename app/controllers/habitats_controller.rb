class HabitatsController < ApplicationController
  
  def show
    find_habitat
  end

  private

  def find_habitat
    @habitat = Habitat.find(params[:id])
  end

end
