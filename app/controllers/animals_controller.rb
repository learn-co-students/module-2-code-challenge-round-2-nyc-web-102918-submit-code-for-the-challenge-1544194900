class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
   @animal = Animal.find(params[:id])
   @animal.update(params.require(:animal).permit(:species_name, :population_size, :average_weight, :habitat_id))
   redirect_to animal_path(@animal)
 end

 def destroy
   @animal = Animal.find(params[:id])
   @animal.delete
   redirect_to animals_path
 end

end
