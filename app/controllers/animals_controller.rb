class AnimalsController < ApplicationController
before_action :find_animal, only:[:show, :edit, :update]

  def index
    @animals = Animal.all
  end

  def show
    @habitats=Habitat.all
  end

  def new
    @animal = Animal.new
    @habitat = Habitat.all
  end

  def create
    @animal = Animal.create(animal_params)
      if @animal.valid?
        redirect_to @animal
      else
        redirect_to new_animal_path
      end
  end

  def edit

  end

  def update
    @animal.update(animal_params)
    if @animal.save
      redirect_to animal_path
    else
      render :edit
    end
  end


  def destroy

       @animal.destroy
       redirect_to animals_path
  end



private

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:species_name,:population_size,:average_weight,:habitat_id)
  end

end
