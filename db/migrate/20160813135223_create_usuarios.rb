class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :cpf
      t.string :rg

      t.timestamps
    end
  end
end
