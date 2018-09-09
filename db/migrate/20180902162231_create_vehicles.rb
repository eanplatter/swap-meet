class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.string :cost_in_credits
      t.string :length
      t.string :max_atmosphering_speed
      t.string :crew
      t.string :passengers
      t.string :cargo_capacity
      t.string :consumables
      t.string :vehicle_class
      t.string :swapi_url
      t.string :films, array: true, default: [].to_json
      t.string :pilots, array: true, default: [].to_json

      t.timestamps
    end
  end
end
