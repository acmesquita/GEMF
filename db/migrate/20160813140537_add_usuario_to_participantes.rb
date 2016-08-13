class AddUsuarioToParticipantes < ActiveRecord::Migration[5.0]
  def change
    add_reference :participantes, :usuario, foreign_key: true
  end
end
