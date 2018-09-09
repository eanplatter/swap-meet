class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :classification
      t.string :designation
      t.string :average_height
      t.string :skin_colors
      t.string :hair_colors
      t.string :eye_colors
      t.string :average_lifespan
      t.string :language
      t.string :swapi_url
      t.string :homeworld
      t.string :people, array: true, default: [].to_json
      t.string :films, array: true, default: [].to_json

      t.timestamps
    end
  end
end
