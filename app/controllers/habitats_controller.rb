class HabitatsController < ApplicationController

  def index
    @habitats=Habitat.all
  end


  def show
    @habitat = Habitat.find(params[:id])
  end



  private

  def habitat_params
    params.require(:animal).permit(:name)
  end

end
