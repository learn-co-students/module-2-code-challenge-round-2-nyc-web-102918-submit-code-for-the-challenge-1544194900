class Animal < ApplicationRecord
  belongs_to :habitat
  validates :species_name, uniqueness: true
  validates :population_size, numericality: {greater_than: 0}
  validates :average_weight, numericality: {greater_than: 0}

#Should display the animal with the highest average weight in that habitat
def highest_average

#my idea is to create an array of numbers (average), to do that I have to iterate the Animal object but I
#use map tp take out just the information related with the average, then I'll have an array with averages then I find the biggest number in that array
#this method return that number as integer, finally I can go to my show page to display it.

end





end
