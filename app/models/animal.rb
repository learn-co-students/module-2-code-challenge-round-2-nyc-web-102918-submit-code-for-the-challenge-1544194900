class Animal < ApplicationRecord
  belongs_to :habitat
  validates :species_name, uniqueness: true
  validates :size, numericality: {minimum: 0}
  validates :average_weight, numericality: {minimum: 0}
end
