class CreateEncontros < ActiveRecord::Migration[5.0]
  def change
    create_table :encontros do |t|
      t.string :titulo
      t.string :descricao
      t.string :tema
      t.date :inicio_inscricoes
      t.date :fim_inscricoes
      t.date :inicio_encontro
      t.date :fim_encontro
      t.decimal :valor
      t.integer :quant_max

      t.timestamps
    end
  end
end
