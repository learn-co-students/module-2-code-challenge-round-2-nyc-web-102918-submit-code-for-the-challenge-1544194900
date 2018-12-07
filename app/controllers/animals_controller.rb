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

  def create
    @animal.create(animal_params)
    if @animal.valid?
      redirect_to animal_path
    else
      flash[:errors] = @animal.errors.full_messages
      redirect_to new_animal_path
  end
end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
  end

  private

  def animal_params
    params.require(:animal).permit(:species_name, :population_size, :average_weight, :habitat_id)
  end

end
