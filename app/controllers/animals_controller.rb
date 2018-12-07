class AnimalsController < ApplicationController
  before_action :find_animal, only:[:show, :edit, :update, :delete]

  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
    @habitats = Habitat.all
  end

  def create
    @animal = Animal.new
    @habitats = Habitat.all
    if @animal.save
      redirect_to @animal
    else
      flash[:errors] = @animal.errors.full_messages
      redirect_to new_animal_path
    end
  end

  def edit
    @habitats = Habitat.all
  end

  def update
    @habitats = Habitat.all
    if @animal.update(animal_params)
      redirect_to @animal
    else
      flash[:errors] = @animal.errors.full_messages
      redirect_to edit_animal_path
    end
  end

  def destroy
    @animal.destroy
  end

  private

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:species_name, :population_size, :average_weight, :habitat_id)
  end

end
