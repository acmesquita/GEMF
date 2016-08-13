class AtualizarCamposDoParticipante < ActiveRecord::Migration[5.0]
  def change
  	remove_column :participantes, :nome
  	remove_column :participantes, :nascimento
  	remove_column :participantes, :cpf
  	remove_column :participantes, :nome
  	remove_column :participantes, :rg
  	remove_column :participantes, :email
  	remove_column :participantes, :rua
  	remove_column :participantes, :numero
  	remove_column :participantes, :complemento
  	remove_column :participantes, :cidade
  	remove_column :participantes, :estado
  end
end
