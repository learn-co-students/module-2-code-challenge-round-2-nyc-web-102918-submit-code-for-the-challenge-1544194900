class CreateAnimals < ActiveRecord::Migration[5.2]
	def change
		create_table :animals do |t|
			t.string :species_name
			t.integer :population_size
			t.integer :average_weight
			t.belongs_to :habitat

			t.timestamps
		end
	end
end
