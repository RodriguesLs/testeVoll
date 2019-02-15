class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :nome
      t.string :descricao
      t.string :url

      t.timestamps null: false
    end
  end
end
