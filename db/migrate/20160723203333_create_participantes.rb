class CreateParticipantes < ActiveRecord::Migration[5.0]
  def change
    create_table :participantes do |t|
      t.string :nome
      t.date :nascimento
      t.string :cpf
      t.string :rg
      t.string :email
      t.decimal :valor_pago
      t.string :tipo_pagamento

      t.timestamps
    end
  end
end
