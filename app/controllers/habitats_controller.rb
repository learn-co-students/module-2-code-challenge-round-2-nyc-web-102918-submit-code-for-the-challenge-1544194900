class HabitatsController < ApplicationController
  def show
    @habitat = Habitat.find(params[:id])
  end

  def largest
    avg_weight = self.animals.sort_by {|animal| animal.average_weight }
    avg_weight.last
  end

  def largest_population
    population = self.animals.sort_by {|animal| animal.population_size}
    population.last
  end
end
