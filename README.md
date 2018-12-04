# Module 2 Code Challenge

### Animal Kingdom

Welcome to the Animal Kingdom! Our mission: to bring the majesty of the animal world to the digital age! 

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `rake db:migrate` to get started.

## The Domain

As a developer for Animal Kingdom, it is your job to create a platform for intrepid biologists out in the field to record the various animal species they see out in the field. There are various Habitats (deserts, forests, grasslands, etc.), each **having many** different types of Animals!

## Instructions / Deliverables

We have provided you with some basic setup and a seed file to get you started. Make sure to take a tour of everything that we've created for you! 

(NOTE: Don't worry too much about the biological accuracy of the seed file! It's random!)

First, create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the Habitats and Animals have been created with the proper relations.

Our product team has ordered the following features:

- Index page for animals
	- Should display a list of links to show pages for animals
- Show page for an animal
	- Should display all of the animal's details, as well as a link to the show page of the habitat it lives in
	- Should have a link to edit that animal
	- Should have a button called "Endanger" that when clicked, reduces the population size to 999. 
- New page for an animal
	- Should validate for the uniqueness of an animal's name
	- Population size and average weight should be above 0
- Edit page for an animal
	- Should be able to edit an animal with the correct validations
	- Should have a link to delete that animal
- Show page for a habitat
	- Should display the habitat's name as well as a list of links to all animals that live in that habitat
	- Should display the animal with the highest average weight in that habitat
	- Should display the animal with the largest population for that habitat
