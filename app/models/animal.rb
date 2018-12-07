class Animal < ApplicationRecord
  belongs_to :habitat
  validates :species_name, presence: true
  validates :species_name, uniqueness: true
  validates :population_size, length: {minimum: 1}
  validates :average_weight, length: {minimum: 1}
  def endangered

  end
  def largest_population_size
    Animal.all.max_by do |animal|
     animal.population_size
   end
  end
end
