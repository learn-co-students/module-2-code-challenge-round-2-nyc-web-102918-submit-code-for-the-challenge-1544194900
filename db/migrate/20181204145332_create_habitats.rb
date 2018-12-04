class CreateHabitats < ActiveRecord::Migration[5.2]
  def change
    create_table :habitats do |t|
      t.string :name

      t.timestamps
    end
  end
end
