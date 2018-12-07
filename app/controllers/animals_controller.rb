class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  # def endanger
  #   @animal = Animal.find(endanger_params)
  #   @animal.decrement(:population_size, 1)
  # end
  #did not finish, the method works in the console to
  #reduce pop size by, was working on getting the
  #correct route to work for update button

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    if @animal.valid?
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    if @animal.valid?
      redirect_to animal_path(@animal)
    else
      render :edit
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
  end

private
  def animal_params
    params.require(:animal).permit(:species_name, :population_size, :average_weight, :habitat_id)
  end

  def endanger_params
    params.require(:animal).permit(:population_size)
  end

end
