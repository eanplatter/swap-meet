class CreateStarships < ActiveRecord::Migration[5.2]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.string :cost_in_credits
      t.string :length
      t.string :max_atmoshpering_speed
      t.string :crew
      t.string :passengers
      t.string :cargo_capacity
      t.string :consumables
      t.string :hyperdrive_rating
      t.string :MGLT
      t.string :starship_class
      t.string :swapi_url
      t.string :films, array: true, default: [].to_json
      t.string :pilots, array: true, default: [].to_json

      t.timestamps
    end
  end
end
