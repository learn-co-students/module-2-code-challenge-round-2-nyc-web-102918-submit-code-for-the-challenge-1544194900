class AnimalsController < ApplicationController

  def index
    @animals = Animal.all

  end

  def show
    @habitats = Habitat.all
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    redirect_to animal_path(@animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal = Animal.udate(animal_params)
    redirect_to animal_path(@animal)
  end


  private

  def animal_params
  params.require(:animal).permit[:species_name, :popoulation_size, :average_weight]
 end

end
