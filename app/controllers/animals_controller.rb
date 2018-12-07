class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
    @habitats = Habitat.all
  end

  def create
    @animal = Animal.create(animal_params)
    if @animal.valid?
      redirect_to animals_path
    else
      flash[:errors] = @animal.errors.full_messages
      redirect_to new_animal_path
    end
  end

  def edit
    @animal = Animal.find(params[:id])
    @habitats = Habitat.all
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animal_path(@animal)
    else
      flash[:errors] = @animal.errors.full_messages
      redirect_to edit_animal_path(@animal)
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

  def endanger
    @animal = Animal.find(params[:id])
    @animal.population_size -= 1
    redirect_to animal_path(@animal)
  end

  private

  def animal_params
    params.require(:animal).permit(:species_name, :population_size, :average_weight, :habitat_id)
  end

end #class AnimalsController
