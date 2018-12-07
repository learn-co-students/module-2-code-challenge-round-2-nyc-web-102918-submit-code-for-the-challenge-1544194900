class Animal < ApplicationRecord
  belongs_to :habitat

  validates :species_name, uniqueness: true
  validates :population_size, numericality: { greater_than: 0}
  validates :average_weight, numericality: { greater_than: 0}

end
