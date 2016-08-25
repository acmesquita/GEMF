class AddColunmToEncontro < ActiveRecord::Migration[5.0]
  def change
  	add_column :encontros, :criador_id, :integer
  end
end
