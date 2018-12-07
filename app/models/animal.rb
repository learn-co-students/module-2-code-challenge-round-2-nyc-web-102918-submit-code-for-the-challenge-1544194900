class Animal < ApplicationRecord
  belongs_to :habitat

  validates :species_name, uniqueness: true
end
