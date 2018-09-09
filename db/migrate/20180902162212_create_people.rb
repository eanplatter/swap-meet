class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :height
      t.string :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.string :birth_year
      t.string :gender
      t.string :swapi_url
      t.string :homeworld
      t.string :films, array: true, default: [].to_json
      t.string :vehicles, array: true, default: [].to_json
      t.string :starships, array: true, default: [].to_json
      t.string :species, array: true, default: [].to_json

      t.timestamps
    end
  end
end
