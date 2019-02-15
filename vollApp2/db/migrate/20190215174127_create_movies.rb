class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
