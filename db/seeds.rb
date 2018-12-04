# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Habitat.destroy_all
Animal.destroy_all

Habitat.create(name: "Rain Forest")
Habitat.create(name: "Desert")
Habitat.create(name: "Grassland")
Habitat.create(name: "Marine")


animals = [
	{
		species_name: "Alligator",
		average_weight: 500
	},
	{
		species_name: "Chimpanzee",
		average_weight: 130
	},
	{
		species_name: "Dolphin",
		average_weight: 330
	},
	{
		species_name: "Whale",
		average_weight: 8000
	},
	{
		species_name: "Barracuda",
		average_weight: 53
	},
	{
		species_name: "Elk",
		average_weight: 700
	},
	{
		species_name: "Eagle",
		average_weight: 14
	},
	{
		species_name: "Falcon",
		average_weight: 3
	},
	{
		species_name: "Lion",
		average_weight: 300
	},
	{
		species_name: "Muskrat",
		average_weight: 2
	},
	{
		species_name: "Scorpion",
		average_weight: 1
	},
	{
		species_name: "Rattlesnake",
		average_weight: 3
	},
	{
		species_name: "Fox",
		average_weight: 11
	},
	{
		species_name: "Tsetse Fly",
		average_weight: 1
	},
	{
		species_name: "Spider",
		average_weight: 1
	},
	{
		species_name: "Bear",
		average_weight: 1300
	},
	{
		species_name: "Deer",
		average_weight: 230
	},
	{
		species_name: "Jaguar",
		average_weight: 170
	},
	{
		species_name: "Coyote",
		average_weight: 40
	},
	{
		species_name: "Capybara",
		average_weight: 120
	},
	{
		species_name: "Oyster",
		average_weight: 1
	},
	{
		species_name: "Salmon",
		average_weight: 57
	},
	{
		species_name: "Shark",
		average_weight: 2000
	},
	{
		species_name: "Squirrel",
		average_weight: 2
	}
]


animals.each { |animal| 
	data = animal.merge({
		population_size: rand(1000..10000), 
		habitat_id: Habitat.all.sample.id
	})
	
	Animal.create(data)
}
