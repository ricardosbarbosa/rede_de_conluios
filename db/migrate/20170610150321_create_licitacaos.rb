class CreateLicitacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :licitacaos do |t|
      t.string :tipo
      t.date :data
      t.float :valor
      t.string :descricao

      t.timestamps
    end
  end
end
