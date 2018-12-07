class Habitat < ApplicationRecord
  has_many :animals
  def largest_population_size
    self.animals.max_by do |animal|
     animal.population_size
   end
  end
end
