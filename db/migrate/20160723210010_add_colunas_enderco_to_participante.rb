class AddColunasEndercoToParticipante < ActiveRecord::Migration[5.0]
  def change
    add_column :participantes, :rua, :string
    add_column :participantes, :numero, :string
    add_column :participantes, :complemento, :string
    add_column :participantes, :cidade, :string
    add_column :participantes, :estado, :string
  end
end
