class AddColunaToParticipante < ActiveRecord::Migration[5.0]
  def change
    add_column :participantes, :encontro_id, :integer
  end
end
