class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :episode_id
      t.string :opening_crawl
      t.string :director
      t.string :producer
      t.string :release_date
      t.string :swapi_url
      t.string :characters, array: true, default: [].to_json
      t.string :planets, array: true, default: [].to_json
      t.string :starships, array: true, default: [].to_json
      t.string :species, array: true, default: [].to_json
      t.string :vehicles, array: true, default: [].to_json

      t.timestamps
    end
  end
end
