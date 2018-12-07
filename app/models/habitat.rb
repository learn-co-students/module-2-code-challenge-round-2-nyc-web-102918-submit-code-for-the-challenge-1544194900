class Habitat < ApplicationRecord
  has_many :animals

  def highest_avg_weight
    self.animals.max_by { |animal| animal.average_weight }
  end

  def largest_pop
    self.animals.max_by { |animal| animal.population_weight }
  end
end
